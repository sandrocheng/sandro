.class Lcom/avast/android/generic/util/ap;
.super Lcom/avast/android/generic/util/av;
.source "UserTask.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/util/an;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/util/an;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/avast/android/generic/util/ap;->a:Lcom/avast/android/generic/util/an;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avast/android/generic/util/av;-><init>(Lcom/avast/android/generic/util/ao;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 185
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 186
    iget-object v0, p0, Lcom/avast/android/generic/util/ap;->a:Lcom/avast/android/generic/util/an;

    iget-object v1, p0, Lcom/avast/android/generic/util/ap;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/an;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
