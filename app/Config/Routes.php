<?php

namespace Config;

use CodeIgniter\Router\RouteCollection;

// Create a new instance of our RouteCollection class.
// $routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
  require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('AuthController');
$routes->setDefaultMethod('loginView');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.s

/**
 * @var RouteCollection $routes
 */
$routes->get('/login', 'AuthController::loginView');
$routes->post('/login/submit', 'AuthController::loginAuth');
$routes->get('/register', 'AuthController::registerView');
$routes->post('/register/submit', 'AuthController::registerAuth');
$routes->get('/logout', 'AuthController::logout');

// API
$routes->group('/api', function ($routes) {
  $routes->post('login', 'AuthController::loginApi');
  $routes->post('register', 'AuthController::registerApi');
  $routes->get('books', 'BookController::listBooksApi');
  $routes->get('popular-books', 'BookController::getPopularBooks');
  $routes->get('books/(:num)', 'BookController::detailBookApi/$1');
  $routes->get('category', 'CategoryController::categoryApi');
  $routes->get('profile', 'AuthController::profileApi', ['filter' => 'authFilter']);
  $routes->post('profile/update', 'AuthController::updateProfileApi', ['filter' => 'authFilter']);
  $routes->get('total-fine', 'BorrowingController::getTotalFineApi', ['filter' => 'authFilter']);
  $routes->get('borrowing', 'BorrowingController::listBorrowingApi', ['filter' => 'authFilter']);
  $routes->post('borrowing', 'BorrowingController::postBorrowingBook', ['filter' => 'authFilter']);
  $routes->post('return', 'BorrowingController::postReturnBook', ['filter' => 'authFilter']);
  $routes->post('review', 'ReviewController::submitReviewApi', ['filter' => 'authFilter']);
  $routes->get('collections', 'CollectionController::index', ['filter' => 'authFilter']);
  $routes->post('collections', 'CollectionController::createCollection', ['filter' => 'authFilter']);
  $routes->delete('collections/delete/(:num)', 'CollectionController::deleteCollection/$1', ['filter' => 'authFilter']);
});


// MVC
$routes->group('', ['filter' => 'authGuard'], function ($routes) {
  // BOOKS
  $routes->get('/books', 'BookController::booksView');
  $routes->post('/books/create', 'BookController::create');
  $routes->post('/books/update/(:num)', 'BookController::updateView/$1');
  $routes->post('/books/delete/(:num)', 'BookController::delete/$1');

  // PAYMENTS
  $routes->get('/payment', 'BorrowingController::paymentView');

  // REPORTS
  $routes->get('/report', 'BorrowingController::reportView');
  $routes->get('/report/generate', 'BorrowingController::generate');

  // BORROWING
  $routes->get('/borrowing', 'BorrowingController::borrowingView');
  $routes->get('/borrowing/update/(:num)/(:any)/(:any)', 'BorrowingController::updateBorrowingStatus/$1/$2/$3');
  $routes->get('/return', 'BorrowingController::returnView');

  // PETUGAS
  $routes->get('/petugas', 'PetugasController::index');
  $routes->post('/petugas/update/(:num)', 'PetugasController::update/$1');
  $routes->post('/petugas/delete/(:num)', 'PetugasController::delete/$1');

  $routes->get('/category', 'CategoryController::index');
  $routes->post('/category/create', 'CategoryController::create');
  $routes->post('/category/update/(:num)', 'CategoryController::update/$1');
  $routes->post('/category/delete/(:num)', 'CategoryController::delete/$1');
});

if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
  require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
