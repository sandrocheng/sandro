.class public Lcom/android/mms/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/NetworkConnectivityListener$ConnectivityBroadcastReceiver;,
        Lcom/android/mms/NetworkConnectivityListener$State;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkConnectivityListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFailover:Z

.field private mListening:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOtherNetworkInfo:Landroid/net/NetworkInfo;

.field private mReason:Ljava/lang/String;

.field private mReceiver:Lcom/android/mms/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

.field private mState:Lcom/android/mms/NetworkConnectivityListener$State;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    .line 127
    sget-object v0, Lcom/android/mms/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/mms/NetworkConnectivityListener$State;

    iput-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mState:Lcom/android/mms/NetworkConnectivityListener$State;

    .line 128
    new-instance v0, Lcom/android/mms/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/NetworkConnectivityListener;Lcom/android/mms/NetworkConnectivityListener$ConnectivityBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mReceiver:Lcom/android/mms/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    .line 129
    return-void
.end method

.method static synthetic access$0(Lcom/android/mms/NetworkConnectivityListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mListening:Z

    return v0
.end method

.method static synthetic access$1(Lcom/android/mms/NetworkConnectivityListener;)Lcom/android/mms/NetworkConnectivityListener$State;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mState:Lcom/android/mms/NetworkConnectivityListener$State;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/mms/NetworkConnectivityListener;Lcom/android/mms/NetworkConnectivityListener$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/mms/NetworkConnectivityListener;->mState:Lcom/android/mms/NetworkConnectivityListener$State;

    return-void
.end method

.method static synthetic access$3(Lcom/android/mms/NetworkConnectivityListener;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/mms/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method static synthetic access$4(Lcom/android/mms/NetworkConnectivityListener;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mms/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method static synthetic access$5(Lcom/android/mms/NetworkConnectivityListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/mms/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/android/mms/NetworkConnectivityListener;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/mms/NetworkConnectivityListener;->mIsFailover:Z

    return-void
.end method

.method static synthetic access$7(Lcom/android/mms/NetworkConnectivityListener;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getOtherNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/mms/NetworkConnectivityListener$State;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mState:Lcom/android/mms/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public isFailover()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mIsFailover:Z

    return v0
.end method

.method public registerHandler(Landroid/os/Handler;I)V
    .locals 2
    .parameter "target"
    .parameter "what"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public declared-synchronized startListening(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/NetworkConnectivityListener;->mListening:Z

    if-nez v1, :cond_0

    .line 137
    iput-object p1, p0, Lcom/android/mms/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/mms/NetworkConnectivityListener;->mReceiver:Lcom/android/mms/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mListening:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/NetworkConnectivityListener;->mReceiver:Lcom/android/mms/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mIsFailover:Z

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/mms/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method
