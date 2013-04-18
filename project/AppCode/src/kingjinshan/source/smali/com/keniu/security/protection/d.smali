.class final Lcom/keniu/security/protection/d;
.super Ljava/lang/Object;
.source "AlarmManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/a;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/keniu/security/protection/d;->a:Lcom/keniu/security/protection/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/protection/d;->a:Lcom/keniu/security/protection/a;

    invoke-static {v0}, Lcom/keniu/security/protection/a;->a(Lcom/keniu/security/protection/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 109
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
