.class final Lcom/avast/android/generic/util/i;
.super Ljava/util/TimerTask;
.source "CommandExecutor.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/util/j;

.field final synthetic b:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/util/j;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/avast/android/generic/util/i;->a:Lcom/avast/android/generic/util/j;

    iput-object p2, p0, Lcom/avast/android/generic/util/i;->b:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/avast/android/generic/util/i;->a:Lcom/avast/android/generic/util/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/avast/android/generic/util/j;->a:Z

    .line 142
    iget-object v0, p0, Lcom/avast/android/generic/util/i;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 143
    return-void
.end method
