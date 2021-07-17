<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
// Admin Part Start

Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('', 'AdminController@index')->name('home');
});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/user', 'UserController@index')->name('user_index');
    Route::get('/user/add', 'UserController@add')->name('user_add');
    Route::post('/user/submit', 'UserController@insert')->name('user_insert');
    Route::get('/user-view/{id}', 'UserController@view')->name('user_view');
    Route::post('/user-delete', 'UserController@delete')->name('user_delete');

});

// offer

Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/offer', 'OfferController@index')->name('offer');
    Route::get('/offer-add', 'OfferController@add')->name('offer_add');
    Route::post('/offer-store', 'OfferController@store')->name('offer_store');
    Route::get('/offer-view/{id}', 'OfferController@view')->name('offer_view');
    Route::get('/offer-edit/{id}', 'OfferController@edit')->name('offer_edit');
    Route::post('/offer-update', 'OfferController@update')->name('offer_update');
    Route::post('/offer-delete', 'OfferController@delete')->name('offer_delete');
});

// POPULAR FEATURES
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/popular_feature', 'PopularFeatureController@index')->name('popular_feature');
    Route::get('/popular_feature-add', 'PopularFeatureController@add')->name('popular_feature_add');
    Route::post('/popular_feature-store', 'PopularFeatureController@store')->name('popular_feature_store');
    Route::get('/popular_feature-view/{id}', 'PopularFeatureController@view')->name('popular_feature_view');
    Route::get('/popular_feature-edit/{id}', 'PopularFeatureController@edit')->name('popular_feature_edit');
    Route::post('/popular_feature-update', 'PopularFeatureController@update')->name('popular_feature_update');
    Route::post('/popular_feature-delete', 'PopularFeatureController@delete')->name('popular_feature_delete');
});
// Category
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/category', 'CategoryController@index')->name('category');
    Route::get('/category-add', 'CategoryController@add')->name('category_add');
    Route::post('/category-store', 'CategoryController@store')->name('category_store');
    Route::get('/category-view/{id}', 'CategoryController@view')->name('category_view');
    Route::get('/category-edit/{id}', 'CategoryController@edit')->name('category_edit');
    Route::post('/category-update', 'CategoryController@update')->name('category_update');
    Route::post('/category-delete', 'CategoryController@delete')->name('category_delete');
});


// application
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/application', 'ApplicationController@index')->name('application');
    Route::get('/application-add', 'ApplicationController@add')->name('application_add');
    Route::post('/application-store', 'ApplicationController@store')->name('application_store');
    Route::get('/application-view/{id}', 'ApplicationController@view')->name('application_view');
    Route::get('/application-edit/{id}', 'ApplicationController@edit')->name('application_edit');
    Route::post('/application-update', 'ApplicationController@update')->name('application_update');
    Route::post('/application-delete', 'ApplicationController@delete')->name('application_delete');
});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/application_view', 'ApplicationViewController@index')->name('applicationview');
    Route::get('/application_view-add', 'ApplicationViewController@add')->name('application_view_add');
    Route::post('/application_view-store', 'ApplicationViewController@store')->name('application_view_store');
    Route::get('/application_view-view/{id}', 'ApplicationViewController@view')->name('application_view_view');
    Route::get('/application_view-edit/{id}', 'ApplicationViewController@edit')->name('application_view_edit');
    Route::post('/application_view-update', 'ApplicationViewController@update')->name('application_view_update');
    Route::post('/application_view-delete', 'ApplicationViewController@delete')->name('application_view_delete');
});
// cybersecurity
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/cybersecurity', 'CybersecurityController@index')->name('cybersecurity');
    Route::get('/cybersecurity-add', 'CybersecurityController@add')->name('cybersecurity_add');
    Route::post('/cybersecurity-store', 'CybersecurityController@store')->name('cybersecurity_store');
    Route::get('/cybersecurity-view/{id}', 'CybersecurityController@view')->name('cybersecurity_view');
    Route::get('/cybersecurity-edit/{id}', 'CybersecurityController@edit')->name('cybersecurity_edit');
    Route::post('/cybersecurity-update', 'CybersecurityController@update')->name('cybersecurity_update');
    Route::post('/cybersecurity-delete', 'CybersecurityController@delete')->name('cybersecurity_delete');
});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/cybersecurity_view', 'CybersecurityViewController@index')->name('cybersecurityview');
    Route::get('/cybersecurity_view-add', 'CybersecurityViewController@add')->name('cybersecurity_view_add');
    Route::post('/cybersecurity_view-store', 'CybersecurityViewController@store')->name('cybersecurity_view_store');
    Route::get('/cybersecurity_view-view/{id}', 'CybersecurityViewController@view')->name('cybersecurity_view_view');
    Route::get('/cybersecurity_view-edit/{id}', 'CybersecurityViewController@edit')->name('cybersecurity_view_edit');
    Route::post('/cybersecurity_view-update', 'CybersecurityViewController@update')->name('cybersecurity_view_update');
    Route::post('/cybersecurity_view-delete', 'CybersecurityViewController@delete')->name('cybersecurity_view_delete');
});



// hosting
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/hosting', 'HostingController@index')->name('hosting');
    Route::get('/hosting-add', 'HostingController@add')->name('hosting_add');
    Route::post('/hosting-store', 'HostingController@store')->name('hosting_store');
    Route::get('/hosting-view/{id}', 'HostingController@view')->name('hosting_view');
    Route::get('/hosting-edit/{id}', 'HostingController@edit')->name('hosting_edit');
    Route::post('/hosting-update', 'HostingController@update')->name('hosting_update');
    Route::post('/hosting-delete', 'HostingController@delete')->name('hosting_delete');
});
// hosting plan
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/hosting_plan', 'HostingPlanController@index')->name('hosting_plan');
    Route::get('/hosting_plan-add', 'HostingPlanController@add')->name('hosting_plan_add');
    Route::post('/hosting_plan-store', 'HostingPlanController@store')->name('hosting_plan_store');
    Route::get('/hosting_plan-view/{id}', 'HostingPlanController@view')->name('hosting_plan_view');
    Route::get('/hosting_plan-edit/{id}', 'HostingPlanController@edit')->name('hosting_plan_edit');
    Route::post('/hosting_plan-update', 'HostingPlanController@update')->name('hosting_plan_update');
    Route::post('/hosting_plan-delete', 'HostingPlanController@delete')->name('hosting_plan_delete');
});
// title
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/title/{id}', 'MenuTitleController@index')->name('title');
    Route::get('/title-add', 'MenuTitleController@add')->name('title_add');
    Route::post('/title-store', 'MenuTitleController@store')->name('title_store');
    Route::get('/title-view/{id}', 'MenuTitleController@view')->name('title_view');
    Route::get('/title-edit/{id}', 'MenuTitleController@edit')->name('title_edit');
    Route::post('/title-update', 'MenuTitleController@update')->name('title_update');
    Route::post('/title-delete', 'MenuTitleController@delete')->name('title_delete');
});


// web service
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/service', 'ServiceController@index')->name('service');
    Route::get('/service-add', 'ServiceController@add')->name('service_add');
    Route::post('/service-store', 'ServiceController@store')->name('service_store');
    Route::get('/service-view/{id}', 'ServiceController@view')->name('service_view');
    Route::get('/service-edit/{id}', 'ServiceController@edit')->name('service_edit');
    Route::post('/service-update', 'ServiceController@update')->name('service_update');
    Route::post('/service-delete', 'ServiceController@delete')->name('service_delete');
});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/service_view', 'ServiceViewController@index')->name('serviceview');
    Route::get('/service_view-add', 'ServiceViewController@add')->name('service_view_add');
    Route::post('/service_view-store', 'ServiceViewController@store')->name('service_view_store');
    Route::get('/service_view-view/{id}', 'ServiceViewController@view')->name('service_view_view');
    Route::get('/service_view-edit/{id}', 'ServiceViewController@edit')->name('service_view_edit');
    Route::post('/service_view-update', 'ServiceViewController@update')->name('service_view_update');
    Route::post('/service_view-delete', 'ServiceViewController@delete')->name('service_view_delete');
});


// apps

Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/apps', 'AppsController@index')->name('apps');
    Route::get('/apps-add', 'AppsController@add')->name('apps_add');
    Route::post('/apps-store', 'AppsController@store')->name('apps_store');
    Route::get('/apps-view/{id}', 'AppsController@view')->name('apps_view');
    Route::get('/apps-edit/{id}', 'AppsController@edit')->name('apps_edit');
    Route::post('/apps-update', 'AppsController@update')->name('apps_update');
    Route::post('/apps-delete', 'AppsController@delete')->name('apps_delete');
});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/apps_view', 'AppsViewController@index')->name('appsview');
    Route::get('/apps_view-add', 'AppsViewController@add')->name('apps_view_add');
    Route::post('/apps_view-store', 'AppsViewController@store')->name('apps_view_store');
    Route::get('/apps_view-view/{id}', 'AppsViewController@view')->name('apps_view_view');
    Route::get('/apps_view-edit/{id}', 'AppsViewController@edit')->name('apps_view_edit');
    Route::post('/apps_view-update', 'AppsViewController@update')->name('apps_view_update');
    Route::post('/apps_view-delete', 'AppsViewController@delete')->name('apps_view_delete');
});

// logo
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/logo', 'LogoController@index')->name('logo');
    Route::get('/logo-add', 'LogoController@add')->name('logo_add');
    Route::post('/logo-store', 'LogoController@store')->name('logo_store');
    Route::get('/logo-view/{id}', 'LogoController@view')->name('logo_view');
    Route::get('/logo-edit/{id}', 'LogoController@edit')->name('logo_edit');
    Route::post('/logo-update', 'LogoController@update')->name('logo_update');
    Route::post('/logo-delete', 'LogoController@delete')->name('logo_delete');
});

// blog_category
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/blog_category', 'BlogsCategoryController@index')->name('blog_category');
    Route::get('/blog_category-add', 'BlogsCategoryController@add')->name('blog_category_add');
    Route::post('/blog_category-store', 'BlogsCategoryController@store')->name('blog_category_store');
    Route::get('/blog_category-view/{id}', 'BlogsCategoryController@view')->name('blog_category_view');
    Route::get('/blog_category-edit/{id}', 'BlogsCategoryController@edit')->name('blog_category_edit');
    Route::post('/blog_category-update', 'BlogsCategoryController@update')->name('blog_category_update');
    Route::post('/blog_category-delete', 'BlogsCategoryController@delete')->name('blog_category_delete');
});

// blogs
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/blogs', 'BlogsController@index')->name('blogs');
    Route::get('/blogs-add', 'BlogsController@add')->name('blogs_add');
    Route::post('/blogs-store', 'BlogsController@store')->name('blogs_store');
    Route::get('/blogs-view/{id}', 'BlogsController@view')->name('blogs_view');
    Route::get('/blogs-edit/{id}', 'BlogsController@edit')->name('blogs_edit');
    Route::post('/blogs-update', 'BlogsController@update')->name('blogs_update');
    Route::post('/blogs-delete', 'BlogsController@delete')->name('blogs_delete');
});
// Mission
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/mission', 'MissionController@index')->name('mission');
    Route::get('/mission-add', 'MissionController@add')->name('mission_add');
    Route::post('/mission-store', 'MissionController@store')->name('mission_store');
    Route::get('/mission-view/{id}', 'MissionController@view')->name('mission_view');
    Route::get('/mission-edit/{id}', 'MissionController@edit')->name('mission_edit');
    Route::post('/mission-update', 'MissionController@update')->name('mission_update');
    Route::post('/mission-delete', 'MissionController@delete')->name('mission_delete');
});

// different
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/different', 'DifferentController@index')->name('different');
    Route::get('/different-add', 'DifferentController@add')->name('different_add');
    Route::post('/different-store', 'DifferentController@store')->name('different_store');
    Route::get('/different-view/{id}', 'DifferentController@view')->name('different_view');
    Route::get('/different-edit/{id}', 'DifferentController@edit')->name('different_edit');
    Route::post('/different-update', 'DifferentController@update')->name('different_update');
    Route::post('/different-delete', 'DifferentController@delete')->name('different_delete');
});
// featured_solutions
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/featured_solutions', 'FeaturedSolutionsController@index')->name('featured_solutions');
    Route::get('/featured_solutions-add', 'FeaturedSolutionsController@add')->name('featured_solutions_add');
    Route::post('/featured_solutions-store', 'FeaturedSolutionsController@store')->name('featured_solutions_store');
    Route::get('/featured_solutions-view/{id}', 'FeaturedSolutionsController@view')->name('featured_solutions_view');
    Route::get('/featured_solutions-edit/{id}', 'FeaturedSolutionsController@edit')->name('featured_solutions_edit');
    Route::post('/featured_solutions-update', 'FeaturedSolutionsController@update')->name('featured_solutions_update');
    Route::post('/featured_solutions-delete', 'FeaturedSolutionsController@delete')->name('featured_solutions_delete');
});


// product application
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/support', 'SupportController@index')->name('support');
    Route::get('/support-add', 'SupportController@add')->name('support_add');
    Route::post('/support-store', 'SupportController@store')->name('support_store');
    Route::get('/support-view/{id}', 'SupportController@view')->name('support_view');
    Route::get('/support-edit/{id}', 'SupportController@edit')->name('support_edit');
    Route::post('/support-update', 'SupportController@update')->name('support_update');
    Route::post('/support-delete', 'SupportController@delete')->name('support_delete');
});

// product add
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/product', 'ProductController@index')->name('product');
    Route::get('/product-add', 'ProductController@add')->name('product_add');
    Route::post('/product-store', 'ProductController@store')->name('product_store');
    Route::get('/product-view/{id}', 'ProductController@view')->name('product_view');
    Route::get('/product-edit/{id}', 'ProductController@edit')->name('product_edit');
    Route::post('/product-update', 'ProductController@update')->name('product_update');
    Route::post('/product-delete', 'ProductController@delete')->name('product_delete');

});
// different section
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/different', 'DifferentController@index')->name('different');
    Route::get('/different-add', 'DifferentController@add')->name('different_add');
    Route::post('/different-store', 'DifferentController@store')->name('different_store');
    Route::get('/different-view/{id}', 'DifferentController@view')->name('different_view');
    Route::get('/different-edit/{id}', 'DifferentController@edit')->name('different_edit');
    Route::post('/different-update', 'DifferentController@update')->name('different_update');
    Route::post('/different-delete', 'DifferentController@delete')->name('different_delete');

});
// featured_solutions section
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/cloud_based', 'CloudBasedController@index')->name('cloud_based');
    Route::get('/cloud_based-add', 'CloudBasedController@add')->name('cloud_based_add');
    Route::post('/cloud_based-store', 'CloudBasedController@store')->name('cloud_based_store');
    Route::get('/cloud_based-view/{id}', 'CloudBasedController@view')->name('cloud_based_view');
    Route::get('/cloud_based-edit/{id}', 'CloudBasedController@edit')->name('cloud_based_edit');
    Route::post('/cloud_based-update', 'CloudBasedController@update')->name('cloud_based_update');
    Route::post('/cloud_based-delete', 'CloudBasedController@delete')->name('cloud_based_delete');

});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/transformation_plan', 'TransformationPlanController@index')->name('transformation_plan');
    Route::get('/transformation_plan-add', 'TransformationPlanController@add')->name('transformation_plan_add');
    Route::post('/transformation_plan-store', 'TransformationPlanController@store')->name('transformation_plan_store');
    Route::get('/transformation_plan-view/{id}', 'TransformationPlanController@view')->name('transformation_plan_view');
    Route::get('/transformation_plan-edit/{id}', 'TransformationPlanController@edit')->name('transformation_plan_edit');
    Route::post('/transformation_plan-update', 'TransformationPlanController@update')->name('transformation_plan_update');
    Route::post('/transformation_plan-delete', 'TransformationPlanController@delete')->name('transformation_plan_delete');

});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/questions', 'QuestionsController@index')->name('questions');
    Route::get('/questions-add', 'QuestionsController@add')->name('questions_add');
    Route::post('/questions-store', 'QuestionsController@store')->name('questions_store');
    Route::get('/questions-view/{id}', 'QuestionsController@view')->name('questions_view');
    Route::get('/questions-edit/{id}', 'QuestionsController@edit')->name('questions_edit');
    Route::post('/questions-update', 'QuestionsController@update')->name('questions_update');
    Route::post('/questions-delete', 'QuestionsController@delete')->name('questions_delete');

});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/customer', 'CustomerController@index')->name('customer');
    Route::get('/customer-add', 'CustomerController@add')->name('customer_add');
    Route::post('/customer-store', 'CustomerController@store')->name('customer_store');
    Route::get('/customer-view/{id}', 'CustomerController@view')->name('customer_view');
    Route::get('/customer-edit/{id}', 'CustomerController@edit')->name('customer_edit');
    Route::post('/customer-update', 'CustomerController@update')->name('customer_update');
    Route::post('/customer-delete', 'CustomerController@delete')->name('customer_delete');

});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/laas_solution', 'LaasSolutionController@index')->name('laas_solution');
    Route::get('/laas_solution-add', 'LaasSolutionController@add')->name('laas_solution_add');
    Route::post('/laas_solution-store', 'LaasSolutionController@store')->name('laas_solution_store');
    Route::get('/laas_solution-view/{id}', 'LaasSolutionController@view')->name('laas_solution_view');
    Route::get('/laas_solution-edit/{id}', 'LaasSolutionController@edit')->name('laas_solution_edit');
    Route::post('/laas_solution-update', 'LaasSolutionController@update')->name('laas_solution_update');
    Route::post('/laas_solution-delete', 'LaasSolutionController@delete')->name('laas_solution_delete');

});

// all header
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/allheader/{id}', 'HeaderController@index')->name('allheader');
    Route::get('/allheader-add', 'HeaderController@add')->name('allheader_add');
    Route::post('/allheader-store', 'HeaderController@store')->name('allheader_store');
    Route::get('/allheader-view/{id}', 'HeaderController@view')->name('allheader_view');
    Route::get('/allheader-edit/{id}', 'HeaderController@edit')->name('allheader_edit');
    Route::post('/allheader-update', 'HeaderController@update')->name('allheader_update');
    Route::post('/allheader-delete', 'HeaderController@delete')->name('allheader_delete');

});


// all header
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/address', 'AddressController@index')->name('address');
    Route::get('/address-add', 'AddressController@add')->name('address_add');
    Route::post('/address-store', 'AddressController@store')->name('address_store');
    Route::get('/address-view/{id}', 'AddressController@view')->name('address_view');
    Route::get('/address-edit/{id}', 'AddressController@edit')->name('address_edit');
    Route::post('/address-update', 'AddressController@update')->name('address_update');
    Route::post('/address-delete', 'AddressController@delete')->name('address_delete');

});
// footer
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/footer_one', 'FooterOneController@index')->name('footer_one');
    Route::get('/footer_one-add', 'FooterOneController@add')->name('footer_one_add');
    Route::post('/footer_one-store', 'FooterOneController@store')->name('footer_one_store');
    Route::get('/footer_one-view/{id}', 'FooterOneController@view')->name('footer_one_view');
    Route::get('/footer_one-edit/{id}', 'FooterOneController@edit')->name('footer_one_edit');
    Route::post('/footer_one-update', 'FooterOneController@update')->name('footer_one_update');
    Route::post('/footer_one-delete', 'FooterOneController@delete')->name('footer_one_delete');

});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/footer_two', 'FooterTwoController@index')->name('footer_two');
    Route::get('/footer_two-add', 'FooterTwoController@add')->name('footer_two_add');
    Route::post('/footer_two-store', 'FooterTwoController@store')->name('footer_two_store');
    Route::get('/footer_two-view/{id}', 'FooterTwoController@view')->name('footer_two_view');
    Route::get('/footer_two-edit/{id}', 'FooterTwoController@edit')->name('footer_two_edit');
    Route::post('/footer_two-update', 'FooterTwoController@update')->name('footer_two_update');
    Route::post('/footer_two-delete', 'FooterTwoController@delete')->name('footer_two_delete');

});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/footer_three', 'FooterThreeController@index')->name('footer_three');
    Route::get('/footer_three-add', 'FooterThreeController@add')->name('footer_three_add');
    Route::post('/footer_three-store', 'FooterThreeController@store')->name('footer_three_store');
    Route::get('/footer_three-view/{id}', 'FooterThreeController@view')->name('footer_three_view');
    Route::get('/footer_three-edit/{id}', 'FooterThreeController@edit')->name('footer_three_edit');
    Route::post('/footer_three-update', 'FooterThreeController@update')->name('footer_three_update');
    Route::post('/footer_three-delete', 'FooterThreeController@delete')->name('footer_three_delete');

});

// banner
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/banner', 'BannerController@index')->name('banner');
    Route::get('/banner-add', 'BannerController@add')->name('banner_add');
    Route::post('/banner-store', 'BannerController@store')->name('banner_store');
    Route::get('/banner-view/{id}', 'BannerController@view')->name('banner_view');
    Route::get('/banner-edit/{id}', 'BannerController@edit')->name('banner_edit');
    Route::post('/banner-update', 'BannerController@update')->name('banner_update');
    Route::post('/banner-delete', 'BannerController@delete')->name('banner_delete');

});
// about sas
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/aboutsas', 'AboutSasController@index')->name('aboutsas');
    Route::get('/aboutsas-add', 'AboutSasController@add')->name('aboutsas_add');
    Route::post('/aboutsas-store', 'AboutSasController@store')->name('aboutsas_store');
    Route::get('/aboutsas-view/{id}', 'AboutSasController@view')->name('aboutsas_view');
    Route::get('/aboutsas-edit/{id}', 'AboutSasController@edit')->name('aboutsas_edit');
    Route::post('/aboutsas-update', 'AboutSasController@update')->name('aboutsas_update');
    Route::post('/aboutsas-delete', 'AboutSasController@delete')->name('aboutsas_delete');

});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/service-category', 'ServiceCategoryController@index')->name('service_category');
    Route::get('/service-category-add', 'ServiceCategoryController@add')->name('service_category_add');
    Route::post('/service-category-store', 'ServiceCategoryController@store')->name('service_category_store');
    Route::get('/service-category-view/{id}', 'ServiceCategoryController@view')->name('service_category_view');
    Route::get('/service-category-edit/{id}', 'ServiceCategoryController@edit')->name('service_category_edit');
    Route::post('/service-category-update', 'ServiceCategoryController@update')->name('service_category_update');
    Route::post('/service-category-delete', 'ServiceCategoryController@delete')->name('service_category_delete');

});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/service-details', 'ServiceDetailsController@index')->name('service_details');
    Route::get('/service-details-add', 'ServiceDetailsController@add')->name('service_details_add');
    Route::post('/service-details-store', 'ServiceDetailsController@store')->name('service_details_store');
    Route::get('/service-details-view/{id}', 'ServiceDetailsController@view')->name('service_details_view');
    Route::get('/service-details-edit/{id}', 'ServiceDetailsController@edit')->name('service_details_edit');
    Route::post('/service-details-update', 'ServiceDetailsController@update')->name('service_details_update');
    Route::post('/service-details-delete', 'ServiceDetailsController@delete')->name('service_details_delete');

});




// contact us
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/contact-msg', 'ContactController@index')->name('contact_msg');
    Route::get('/contact-msg-view/{id}', 'ContactController@view')->name('contact_msg_view');
    Route::post('/contact-msg-delete', 'ContactController@delete')->name('contact_msg_delete');
});
Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/question-msg', 'QuestionController@index')->name('question_msg');
    Route::get('/question-msg-view/{id}', 'QuestionController@view')->name('question_msg_view');
    Route::post('/question-msg-delete', 'QuestionController@delete')->name('question_msg_delete');
});



// website


Route::get('/', 'WebsiteController@index');




Route::post('/contact', 'WebsiteController@contact')->name('contact');
Route::post('/question', 'WebsiteController@question')->name('question');
Route::post('/contactmail', 'WebsiteController@mailcontact')->name('mailcontact');

Route::get('/single_offer/{id}', 'WebsiteController@single_offer')->name('single_offer');


Route::get('/web_aboutsas/{id}', 'WebsiteController@web_aboutsas')->name('web_aboutsas');

Route::get('/webapplication', 'WebsiteController@webapplication')->name('webapplication');
Route::get('/webapplication_view/{id}', 'WebsiteController@webapplication_view')->name('webapplication_view');

Route::get('/webcybersecurity', 'WebsiteController@webcybersecurity')->name('webcybersecurity');
Route::get('/webcybersecurity_view/{id}', 'WebsiteController@webcybersecurity_view')->name('webcybersecurity_view');

Route::get('/webhosting', 'WebsiteController@webhosting')->name('webhosting');
Route::get('/webhosting_view/{id}', 'WebsiteController@webhosting_view')->name('webhosting_view');

Route::get('/webservice', 'WebsiteController@webservice')->name('webservice');
Route::get('/webservice_view/{id}', 'WebsiteController@service_view')->name('webservice_view');

Route::get('/webapps', 'WebsiteController@webapps')->name('webapps');
Route::get('/webapps_view/{id}', 'WebsiteController@apps_view')->name('webapps_view');


Route::get('/webblogs', 'WebsiteController@webblogs')->name('webblogs');
Route::get('/webblogs_category/{id}', 'WebsiteController@webblogs_category')->name('webblogs_category');
Route::get('/webblogs_view/{id}', 'WebsiteController@webblogs_view')->name('webblogs_view');


Route::get('/cloud_based_view/{id}', 'WebsiteController@cloud_based_view')->name('cloud_based_view');

Route::get('/laas_application/{id}', 'WebsiteController@laas_application')->name('laas_application');

Route::get('/webcontact', 'WebsiteController@webcontact')->name('webcontact');

// Route::post('/contact', 'WebsiteController@contact')->name('contact');

// Route::get('/webregistration', 'WebsiteController@webregistration')->name('webregistration');


// cart

Route::get('/cart', 'CartController@cart')->name('cart');

Route::get('single-cartadd-hosting/{product}', 'CartController@single_cartadd_hosting');
Route::get('single-cartadd-apps/{product}', 'CartController@single_cartadd_apps');
Route::get('single-cartadd-application/{product}', 'CartController@single_cartadd_application');
Route::get('single-cartadd-cybersecurity/{product}', 'CartController@single_cartadd_cybersecurity');
Route::get('single-cartadd-submenu/{product}', 'CartController@single_cartadd_submenu');
Route::get('single-cartadd-service/{product}', 'CartController@single_cartadd_service');
Route::get('single-cartadd-different/{product}', 'CartController@single_cartadd_different');
Route::get('single-cartadd-transformation/{product}', 'CartController@single_cartadd_transformation');


Route::get('single-cartadd-and-redirect/{product}', 'CartController@single_cartadd_and_redirect');
Route::get('cartitems', 'CartController@cartItems');
Route::get('cart-update-page', 'CartController@cart_update_page');
Route::get('cart/update', 'CartController@cartUpdate');
Route::get('cart/product/remove/{rowid}', 'CartController@cart_product_remove');


Route::get('/checkout', 'CheckOutController@checkout')->name('checkout');
Route::post('/checkout-form', 'CheckOutController@checkout_form');
Route::get('/checkout_save', 'CheckOutController@checkout_save')->name('checkout_save');
Route::get('/order_complete', 'CheckOutController@order_complete')->name('order_complete');
Route::post('/checkout_verify_check', 'CheckOutController@checkout_verify_check')->name('checkout_verify_check');
Route::post('/checkout-form-save', 'CheckOutController@checkout_form_save');


Route::group(['prefix' => 'admin','middleware' => 'auth'],function () {
    Route::get('/orderlist', 'AdminOrderController@orderlist')->name('orderlist');
    Route::get('/orderlist-view/{id}', 'AdminOrderController@orderlist_view')->name('orderlist_view');
    Route::post('/orderlist-delete', 'AdminOrderController@orderlist_delete')->name('orderlist_delete');
    
    Route::get('/orderdetails', 'AdminOrderController@orderdetails')->name('orderdetails');
    Route::get('/orderdetails-view/{id}', 'AdminOrderController@orderdetails_view')->name('orderdetails_view');
    Route::post('/orderdetails-delete', 'AdminOrderController@orderdetails_delete')->name('orderdetails_delete');
    
    Route::get('/orderaddress', 'AdminOrderController@orderaddress')->name('orderaddress');
    Route::get('/orderaddress-view/{id}', 'AdminOrderController@orderaddress_view')->name('orderaddress_view');
    Route::post('/orderaddress-delete', 'AdminOrderController@orderaddress_delete')->name('orderaddress_delete');
  
});