.class final Lcom/keniu/security/protection/c;
.super Ljava/lang/Object;
.source "AlarmManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/a;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/keniu/security/protection/c;->a:Lcom/keniu/security/protection/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/protection/c;->a:Lcom/keniu/security/protection/a;

    invoke-static {v0}, Lcom/keniu/security/protection/a;->a(Lcom/keniu/security/protection/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
