import 'package:events_emitter/emitters/stream_event_emitter.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:flexipeer/src/enums.dart';
import 'package:flexipeer/src/option_interfaces.dart';
import 'package:flexipeer/src/flexi_peer.dart';
import 'package:flexipeer/src/servermessage.dart';

abstract class BaseConnection extends StreamEventEmitter {
  BaseConnection(this.peer, this.provider, this.options) {
    metadata = options?.metadata;
  }

  bool open = false;
  late String connectionId;
  RTCPeerConnection? peerConnection;
  dynamic metadata;
  late FlexiPeer? provider;
  late String peer;
  late PeerConnectOption? options;
  late ConnectionType type;

  void dispose();
  void handleMessage(ServerMessage message);

  void closeRequest() {
    emit("close", null);
  }
}
