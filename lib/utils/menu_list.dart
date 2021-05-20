

import 'package:flutter/material.dart';

Widget customMenuItems(BuildContext context, {Function onTap, String title, IconData leadingIcon,
IconData trailingIcon,
}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.grey, width: 1),),
    ),
    child: ListTile(
      leading: Icon(leadingIcon ?? Icons.dashboard_outlined),
      title: Text(title ?? '', style: Theme.of(context).textTheme.bodyText1.copyWith(
          fontSize: 16
      ),),
      dense: true,
      minLeadingWidth: 20,
      trailing: Icon(trailingIcon ?? Icons.arrow_forward_ios_rounded),
      onTap: onTap ?? null,
    ),
  );
}