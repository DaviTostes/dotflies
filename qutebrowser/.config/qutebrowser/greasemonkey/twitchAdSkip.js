// ==UserScript==
// u/name         Auto Skip Twitch Ads
// u/version      1.0.0
// u/description  Speed up and skip Twitch ads automatically
// u/author       jso8910
// u/match        *://*.twitch.com/*
// u/exclude      *://*.twitch.com/subscribe_embed?*
// ==/UserScript==
setInterval(() => {
  try { document.querySelector('.amazon-videos-ads-ui').firstChild.firstChild.firstChild.currentTime = 99999 } catch {}
}, 500);
