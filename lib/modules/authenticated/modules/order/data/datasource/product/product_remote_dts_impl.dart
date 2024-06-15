import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/category_model.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/order/order_model.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/product_model.dart';
import 'package:sqflite/sqflite.dart';

class ProductRemoteDTSImpl {
  ProductRemoteDTSImpl._init();

  static final ProductRemoteDTSImpl instance = ProductRemoteDTSImpl._init();

  //Initiate name of table on DB
  final String tableProducts = 'products';
  final String tableOrders = 'orders';
  final String tableOrderItems = 'order_items';
  final String tableCategory = 'category';

  //For handle DB
  static Database? _database;

  //Create the DB
  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $tableProducts (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        productId INTEGER,
        category_id INTEGER,
        name TEXT NOT NULL,
        description TEXT,
        image TEXT,
        price TEXT,
        stock INTEGER,
        status INTEGER,
        is_favorite INTEGER,
        created_at TEXT,
        updated_at TEXT,
        criteria TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE $tableCategory (
       id INTEGER PRIMARY KEY AUTOINCREMENT,
       categoryId INTEGER,
       name TEXT NOT NULL,
       description TEXT,
       image TEXT,
       created_at TEXT,
       updated_at TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE $tableOrders (
       id INTEGER PRIMARY KEY AUTOINCREMENT,
       nominal INTEGER,
       payment_method TEXT,
       payment_amount INTEGER,
       total_price INTEGER,
       total_item INTEGER,
       cashier_id INTEGER,
       cashier_name TEXT,
       transaction_time TEXT,
       is_sync INTEGER DEFAULT 0
      )
    ''');
    await db.execute('''
      CREATE TABLE $tableOrderItems (
       id INTEGER PRIMARY KEY AUTOINCREMENT,
       id_order INTEGER,
       id_product INTEGER,
       quantity INTEGER,
       price INTEGER
      )
    ''');
  }

  //Initiate DB
  Future<Database> _initDB() async {
    final path = await getDatabasesPath();
    final dbPath = '$path/tiketing-wisata.db';
    return openDatabase(dbPath, version: 1, onCreate: _createDB);
  }

  //Get DB
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  //Insert All Product
  Future<void> insertAllProduct(List<Product> proucts) async {
    final db = await database;
    for (var product in proucts) {
      await db.insert(
        tableProducts,
        product.toLocalMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  //Remove All Product
  Future<void> removeAllProduct() async {
    final db = await instance.database;
    await db.delete(tableProducts);
  }

  //Get All Product
  Future<List<Product>> getProducts() async {
    final db = await instance.database;
    //initial "p" as "Product", initial c as "Category"
    final List<Map<String, dynamic>> maps = await db.rawQuery('''
      SELECT p.*, c.id as category_id, c.name as category_name, c.description as category_description,
             c.image as category_image, c.created_at as category_created_at, c.updated_at as category_updated_at
      FROM $tableProducts p
      LEFT JOIN $tableCategory c ON p.category_id = c.id
    ''');
    return List.generate(maps.length, (i) {
      final productMap = maps[i];
      final categoryMap = {
        'id': productMap['category_id'],
        'name': productMap['category_name'],
        'description': productMap['category_description'],
        'image': productMap['category_image'],
        'created_at': productMap['category_created_at'],
        'updated_at': productMap['category_updated_at'],
      };
      return Product.fromLocalMap(productMap).copyWith(
        category: Category.fromMap(categoryMap),
      );
    });
  }

  //Input Order To Local
  Future<int> insertOrder(OrderModel data) async {
    final db = await instance.database;
    final id = await db.insert(
      tableOrders,
      data.toMapLocal(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    for (var orderItems in data.orders) {
      await db.insert(
        tableOrderItems,
        orderItems.toMapLocal(id),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    return id;
  }

  //Get All Orders
  Future<List<OrderModel>> getAllOrders() async {
    final db = await instance.database;
    //Sort Items By Newwst From ID
    final result = await db.query('orders', orderBy: 'id DESC');
    //Mapping List Data To Local Storage
    return result.map((e) => OrderModel.fromLocal(e)).toList();
  }
}
