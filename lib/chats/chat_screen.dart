import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ichat/models/message_model.dart';
import 'package:ichat/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  // ignore: library_private_types_in_public_api
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      margin: isMe
          ? const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 80.0,
              right: 10.0,
            )
          : const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 10.0,
            ),
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: isMe ? const Color(0xFFFFEFEE) : const Color(0xFFFEF9EB),
        borderRadius: isMe
            ? const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              )
            : const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            message.text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );

    if (isMe) {
      return msg;
    }

    return Row(
      children: <Widget>[
        msg,
        IconButton(
          icon: message.isLiked
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_border_rounded),
          iconSize: 25,
          color: message.isLiked ? Colors.redAccent : Colors.black,
          onPressed: () {},
        ),
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.deepPurpleAccent,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: const Icon(CupertinoIcons.camera_circle_fill),
            iconSize: 40.0,
            color: Colors.white,
            onPressed: () {},
          ),
          Expanded(
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 7,
                    minLines: 1,
                    textCapitalization: TextCapitalization.sentences,
                    textAlign: TextAlign.start,
                    onChanged: (value) {},
                    cursorColor: Colors.deepPurpleAccent,
                    decoration: InputDecoration(
                      hintText: 'Send a message...',
                      prefixIcon: IconButton(
                        icon: const Icon(
                          CupertinoIcons.smiley_fill,
                          size: 30.0,
                          color: Colors.amberAccent,
                        ),
                        onPressed: () {},
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          CupertinoIcons.square_grid_2x2_fill,
                          size: 30.0,
                          color: Colors.greenAccent,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.telegram_rounded),
            iconSize: 40.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leadingWidth: 100.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.arrow_back_ios),
              ),
              const SizedBox(
                width: 5.0,
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(widget.user.imageUrl),
              ),
            ],
          ),
        ),
        title: Text(
          widget.user.name,
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(CupertinoIcons.phone_circle_fill),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.videocam_circle_fill),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
                CupertinoIcons.line_horizontal_3_decrease_circle_fill),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 15.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
