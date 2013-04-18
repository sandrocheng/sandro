.class final Lcom/c/a/a/y;
.super Lcom/c/a/a/ad;
.source "SourceFile"


# instance fields
.field private synthetic b:Lcom/c/a/a/x;


# direct methods
.method constructor <init>(Lcom/c/a/a/x;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/c/a/a/y;->b:Lcom/c/a/a/x;

    invoke-direct {p0}, Lcom/c/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 219
    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 223
    iget-object v0, p0, Lcom/c/a/a/y;->b:Lcom/c/a/a/x;

    iget-object v1, p0, Lcom/c/a/a/y;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/c/a/a/x;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
