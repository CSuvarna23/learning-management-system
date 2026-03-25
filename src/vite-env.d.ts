/// <reference types="vite/client" />

interface YTPlayer {
  destroy(): void;
  getCurrentTime(): number;
  getDuration(): number;
}

interface Window {
  __APP_ENV__?: {
    VITE_SUPABASE_URL?: string;
    VITE_SUPABASE_PUBLISHABLE_KEY?: string;
  };
  YT: {
    Player: new (elementId: string, options: any) => YTPlayer;
  };
  onYouTubeIframeAPIReady: (() => void) | undefined;
}
