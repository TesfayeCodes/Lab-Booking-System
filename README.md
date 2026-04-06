# Lab Booking System

A simple command-line Lab Booking System built with Ruby for a backend-focused assignment.

## Overview

This project models a small lab booking system without Rails. It is designed to practice core backend programming concepts such as:

- classes and objects
- arrays and hashes
- business rules
- exceptions
- file organization
- testing with Minitest

Users can reserve lab resources such as projectors or microscopes. A resource cannot be booked again until the current booking is cancelled.

## Project Structure

- `app.rb` - runs a demo of the booking system
- `user.rb` - defines the `User` class
- `resource.rb` - defines the `Resource` class
- `booking.rb` - defines the `Booking` class
- `errors.rb` - defines custom error classes
- `test/test_booking.rb` - contains Minitest test cases

## Classes

### User
A user has:
- `id`
- `name`
- `role`

### Resource
A resource has:
- `id`
- `name`
- `category`

A resource also tracks whether it is currently available.

### Booking
A booking has:
- `user`
- `resource`
- `status`
- `created_at`

A booking starts as `active` and can later be changed to `cancelled`.

## Business Rules

The system supports these rules:

- a user can create a booking for an available resource
- a resource that is already booked cannot be booked again
- a booking has a status such as `active` or `cancelled`
- cancelling a booking makes the resource available again
- invalid actions raise clear errors

## How to Run the Program

Make sure Ruby is installed, then run:

```bash
ruby app.rb
