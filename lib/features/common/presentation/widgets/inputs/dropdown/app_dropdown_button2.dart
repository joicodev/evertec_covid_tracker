part of app_inputs;

class AppDropdownButton2<T> extends StatelessWidget {
  final List<KeyValue<T>> items;

  const AppDropdownButton2({
    required this.items,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<T>(
          isExpanded: true,
          hint: Text(
            'Select Item',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
          items: items.map((e) {
            return DropdownMenuItem<T>(child: Text(e.label));
          }).toList(),
          // value: selectedValue,
          onChanged: (T? value) {
          },
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 40,
            width: 140,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
