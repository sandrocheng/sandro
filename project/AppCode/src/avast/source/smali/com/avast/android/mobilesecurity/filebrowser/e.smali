.class Lcom/avast/android/mobilesecurity/filebrowser/e;
.super Ljava/lang/Object;
.source "SystemFileBrowserAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lcom/avast/android/mobilesecurity/filebrowser/d;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/filebrowser/d;Ljava/util/List;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/filebrowser/e;->c:Lcom/avast/android/mobilesecurity/filebrowser/d;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/filebrowser/e;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/avast/android/mobilesecurity/filebrowser/e;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/filebrowser/f;

    .line 160
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/filebrowser/e;->c:Lcom/avast/android/mobilesecurity/filebrowser/d;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/filebrowser/d;->b:Lcom/avast/android/mobilesecurity/filebrowser/a;

    iget-wide v3, p0, Lcom/avast/android/mobilesecurity/filebrowser/e;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/avast/android/mobilesecurity/filebrowser/a;->b(Lcom/avast/android/mobilesecurity/filebrowser/a;Lcom/avast/android/mobilesecurity/filebrowser/f;Ljava/lang/Long;)V

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method
