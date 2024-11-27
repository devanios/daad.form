# DaaD Form

DaaD Form is a Flutter package that provides customizable and reusable form fields for creating interactive and user-friendly forms in your applications. This package allows developers to easily design and integrate form fields like text fields with advanced features and options.

## Environment

`sdk: ">=2.17.0 <4.0.0"`

`flutter: ">=2.10.0"`

## Installation

Add the dependency in your `pubspec.yaml`:

```yaml 
  dependencies:
      daad_form: ^0.0.1
```

`$ flutter pub get`

## Getting Started

To get started using this widget, you will need to first import the package inside your project following the installation guide found on [Flutter.dev](https://pub.dev/packages/daad_form).

## Usage

To use this widget, 
1. `import 'package:daad_form/daad_form.dart';` inside your dart file
2. Follow one of the examples bellow and call the widget `DaaDForm(...)`. 
3. The widget takes in 9 arguments: 
`String? label`, 
`String? hintText`,
`TextEditingController? controller`,
`TextInputType? keyboardType`, 
`IconData? prefixIcon`, 
`IconData? suffixIcon`, 
`bool? obscureText`, 
`String? Function(String?)?) validator`, 
`void Function(String)?) onChanged`. 

Read the api documentation on these properties for more details or see the examples provided in the example folder.

## An example of using the validator function
A validation function to check the text entered.

``` dart
    (value) {
        if (value == null || value.isEmpty) {
            return 'Field cannot be empty';
        }
        return null;
    }
```
## An example of using the onChange function
A function called when the text changes.

``` dart
    (value) {
        print('Value changed: $value');
    }
```

### Use it in your app 
``` dart
    DaaDForm(
        label: 'Email',
        hintText: 'Enter your email',
        prefixIcon: Icons.email,
        validator: (value) => value!.isEmpty ? 'Cannot be empty' : null,
    );
```
## Features

- Customizable text fields.
- Built-in validation support.
- Easy integration.