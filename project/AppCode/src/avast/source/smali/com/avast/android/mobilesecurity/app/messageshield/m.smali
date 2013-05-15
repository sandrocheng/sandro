.class Lcom/avast/android/mobilesecurity/app/messageshield/m;
.super Ljava/lang/Object;
.source "NewMessageScanTask.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/filter/core/j;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/core/k;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/messageshield/k;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/messageshield/k;Lcom/avast/android/mobilesecurity/app/filter/core/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/m;->b:Lcom/avast/android/mobilesecurity/app/messageshield/k;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/m;->a:Lcom/avast/android/mobilesecurity/app/filter/core/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewMessageScanTask: Searching for saved aborted message with uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/m;->b:Lcom/avast/android/mobilesecurity/app/messageshield/k;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->b(Lcom/avast/android/mobilesecurity/app/messageshield/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/m;->b:Lcom/avast/android/mobilesecurity/app/messageshield/k;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a(Lcom/avast/android/mobilesecurity/app/messageshield/k;)Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    move-result-object v1

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/m;->b:Lcom/avast/android/mobilesecurity/app/messageshield/k;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a(Lcom/avast/android/mobilesecurity/app/messageshield/k;)Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    move-result-object v2

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/m;->b:Lcom/avast/android/mobilesecurity/app/messageshield/k;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a(Lcom/avast/android/mobilesecurity/app/messageshield/k;)Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    move-result-object v3

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/messageshield/m;->a:Lcom/avast/android/mobilesecurity/app/filter/core/k;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/filter/core/k;)V

    .line 202
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewMessageScanTask: Aborted message with uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not saved."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 207
    return-void
.end method
