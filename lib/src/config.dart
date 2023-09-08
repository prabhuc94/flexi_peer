// ignore_for_file: constant_identifier_names, non_constant_identifier_names

const _DEFAULT_CONFIG = {
  'iceServers': [
    {
      'urls': [
        "stun:stun.bethesda.net:3478",
        "stun2.3cx.com:3478",
        "stun3.3cx.com:3478",
        "stun4.3cx.com:3478",
        "stun.l.google.com:19302",
        "stun1.l.google.com:19302",
        "stun2.l.google.com:19302",
        "stun3.l.google.com:19302",
        "stun4.l.google.com:19302",
        "stun1.l.google.com:19305",
        "stun2.l.google.com:19305",
        "stun3.l.google.com:19305",
        "stun4.l.google.com:19305"
      ]
    },
    {
      "urls": [
        "turn:eu-0.turn.peerjs.com:3478",
        "turn:us-0.turn.peerjs.com:3478",
      ],
      "username": "peerjs",
      "credential": "peerjsp",
    },
    {
      "urls": 'turn:openrelay.metered.ca:80',
      "username": 'openrelayproject',
      "credentials": 'openrelayproject'
    }
  ],
  'sdpSemantics': "unified-plan"
};

class PeerConfig {
  static const CLOUD_HOST = "0.peerjs.com";
  static const CLOUD_PORT = 443;
  static const defaultConfig = _DEFAULT_CONFIG;
  static const DEFAULT_KEY = "peerjs";
  static const VERSION = "1.0";
}
