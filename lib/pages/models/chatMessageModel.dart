class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}List<ChatMessage> messages = [
  ChatMessage(messageContent: "Merhaba", messageType: "receiver"),
  ChatMessage(messageContent: "Orda mısın?", messageType: "receiver"),
  ChatMessage(messageContent: "Hey Selam, burdayım. ne oldu?", messageType: "sender"),
  ChatMessage(messageContent: "Hiç öylesine :D", messageType: "receiver"),
  ChatMessage(messageContent: "Deli misin?", messageType: "sender"),

];