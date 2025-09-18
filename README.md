# 🤖 Friday AI Agent - Lecture Whisperer

**AI-powered teaching assistant that joins LiveKit lecture rooms automatically**

## 🚀 Deploy to Railway

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app)

### **Environment Variables Required:**
```
LIVEKIT_URL=wss://your-livekit-server.livekit.cloud
LIVEKIT_API_KEY=your_livekit_api_key
LIVEKIT_API_SECRET=your_livekit_api_secret
OPENAI_API_KEY=your_openai_api_key
MEM0_API_KEY=your_mem0_api_key
```

### **Features:**
- 🎓 Educational AI assistant (Friday)
- 🌐 Web search capabilities
- 🌤️ Weather information
- 📧 Email functionality
- 🧠 Memory system (Mem0)
- 🎥 Auto-joins LiveKit lecture rooms

### **Local Development:**
```bash
pip install -r requirements.txt
python agent.py dev
```

### **Production Deployment:**
- Uses Dockerfile for containerized deployment
- Automatically starts in production mode
- Health checks included
- Scales automatically on Railway

**Part of the Lecture Whisperer platform** 🎓
