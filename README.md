# multi_store

Shop E-commerce App

State Management:
- Bloc + freezed
- Cubit
- Flutter Hooks

Pattern - DDD (Domain Driven Design):
- Domain (Entities, Value Objects, Failures, Interfaces)
- Infrastructure (DTOs, Repositories implementation, Facades implementation)
- Application (Bloc, Cubit)
- Presentation (Screens, Widgets, Routes)
Plus Dependency Injection - GetIt

Services used:
- Firebase (Authentication, Firestore, Storage);
- Stripe Payment.

Requirements:

Registration:
- Register with email, password, image, name;
- Form validation.

Sign In:
- Sign in with email, password;
- Form validation.

User:
- 2 types of user (customer, supplier);
- Ability to watch/edit account info (email, name, phone, address, image).

Product:
- Upload product with images, name, category, subcategory, price, quantity, description.
- Watch products list by category
- Watch products list by subcategory
- Watch products list by supplier id
- Search products
- Image gallery
- Check store of product

Wishlist:
- Add to wishlist
- Remove to wishlist
- Watch wishlist

Cart:
- Add a new item to cart
- Remove an item from cart
- Increase/decrease cart item's quantity
- Watch cart
- Calulate total price
- Clear cart items list

Order:
- Change name, phone, address
- Select payment type (Cash On Delivery, Pay Online)
- Calculate total price, shipping fee
- Pay using card details
- Watch Orders list

Store:
- Watch all stores
- Ability to follow a store
