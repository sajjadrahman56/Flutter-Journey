
# Responsibe Design

- When we build a app , it can not run a fixed device . It can be run different different type of device as result we need to make our app responsive .If we do not make responsive the problem will occurs that the app will not run in different different device .  The design of the app will be broken . User will not be able to use the app properly . So we need to make our app responsive .

## Example of responsive

When we build an app, it cannot run on a fixed device. It can be run on different types of devices, so we need to make our app responsive. If we do not make it responsive, the app will not run on different devices, and the design of the app will be broken. Users will not be able to use the app properly, so we need to make our app responsive.

### Adaptiveness

- Adaptiveness is the ability of a system to adapt to different screen sizes by changing the layout of the content displayed on the screen.
- Adaptiveness is the ability of a system to adapt to different screen sizes by changing the layout of the content displayed on the screen.
- If the OS system is different, the app will not be different. This case is called adaptiveness.

### LayoutBuilder

The `LayoutBuilder` widget is used for building layouts in Flutter. If we want to play something based on the screen size, we can use `LayoutBuilder`.
Before we move start , we can take a website as an example. We see different behaviour exasit in the same page  

- Adaptiveness is the ability of a system to adapt to different screen sizes by changing the layout of the content displayed on the screen.
- Adaptiveness is the ability of a system to adapt to different screen sizes by changing the layout of the content displayed on the screen.
-If the OS system different the app will be not different , this case is called adaptiveness .
- used for building layouts in Flutter.
- if we want to play something based on the screen size we can use LayoutBuilder .
`
LayoutBuilder(
  builder: (BuildContext context, BoxConstraints constraints) {
    if (constraints.maxWidth > 600) {
      return _buildWideContainers();
    } else {
      return _buildNormalContainer();
    }
  },
);
`

### Wrap widget

- Wrap widget is used to wrap the widget . If we want to wrap the widget we can use Wrap widget .
- For example we are use a Row which container 10 Text widget with which length minimum 30 . We must be used SingleChilde scrollview and scroll direction is 'axis.horizonatl' . However if we scroll we can see other wise we can not see . Missing some texts from the UI .

- But the user want to see all the text line after line in the UI , based on screen size if not possible all in the same screen , then move the text to the Lin.
- Here come to the Wrap widget . We can use Wrap widget to wrap the text line after line .
`
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Wrap(
                  children: [
                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    ]
                )
`
