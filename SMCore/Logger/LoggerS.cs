using System;
using System.Collections.Generic;
using System.Reflection;

namespace SMCore.Logger
{
    public class LoggerS : ILoggerS
    {
        public int RegisterCount { get; private set; }
        public Action<string> Output { get; private set; }
        private List<ILoggerListener> Listeners 
        {
            get
            {
                if (_listeners == null)
                    _listeners = new List<ILoggerListener>();
                return _listeners;
            }
        }
        private List<ILoggerListener> _listeners;

        public void Register(ILoggerListener listener)
        {
            if (listener == null)
                return;
            Listeners.Add(listener);
            RegisterCount++;
        }

        public void Unregistter(ILoggerListener listener)
        {
            if (listener == null)
                return;
            Listeners.Remove(listener);
            RegisterCount--;
        }

        public void Debug(object msg)
        {
            string str = msg != null ? msg.ToString() : "null";
            Log(str, LogChannel.Debug, false);
        }

        public void Warning(object msg)
        {
            string str = msg != null ? msg.ToString() : "null";
            Log(str, LogChannel.Warn, false);
        }

        public void Info(object msg)
        {
            string str = msg != null ? msg.ToString() : "null";
            Log(str, LogChannel.Info, false);
        }

        public void Error(object msg)
        {
            string str = msg != null ? msg.ToString() : "null";
            Log(str, LogChannel.Error, false);
        }

        private void Log(string msg, LogChannel channel, bool simpleMode)
        {
            if (RegisterCount == 0)
                throw new Exception($"��־���û�м�����(����ͨ������App.RegistLogע����־����)!");

            bool filter = false;
            if (filters != null)
            {
                for (int i = 0; i < filters.Length; i++)
                    filter = msg.IndexOf(filters[i]) != -1;
            }
            if (filter) return; // �ֶι���

            string outputMsg;
            if (simpleMode)
                outputMsg = "[" + channel.ToString() + "]  " + msg;
            else
                outputMsg = "[" + channel.ToString() + "][" + DateTime.Now.ToString("F") + "]  " + msg;

            foreach (ILoggerListener listener in Listeners)
                listener.Log(channel, outputMsg);

            Output?.Invoke(outputMsg);
        }

        private string[] filters;
        public void SetFilter(string[] filters) => this.filters = filters;
    }
}
