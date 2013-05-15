.class Lcom/avast/android/mobilesecurity/app/messageshield/n;
.super Ljava/lang/Object;
.source "NewMessageScanTask.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/filter/core/k;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/core/j;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/messageshield/k;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/messageshield/k;Lcom/avast/android/mobilesecurity/app/filter/core/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/n;->b:Lcom/avast/android/mobilesecurity/app/messageshield/k;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/n;->a:Lcom/avast/android/mobilesecurity/app/filter/core/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewMessageScanTask: Message with uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/n;->b:Lcom/avast/android/mobilesecurity/app/messageshield/k;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a(Lcom/avast/android/mobilesecurity/app/messageshield/k;)Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    move-result-object v1

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/n;->b:Lcom/avast/android/mobilesecurity/app/messageshield/k;

    invoke-static {v0, p1}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a(Lcom/avast/android/mobilesecurity/app/messageshield/k;Ljava/util/List;)V

    .line 214
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/n;->b:Lcom/avast/android/mobilesecurity/app/messageshield/k;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a(Lcom/avast/android/mobilesecurity/app/messageshield/k;)Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    move-result-object v0

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/n;->a:Lcom/avast/android/mobilesecurity/app/filter/core/j;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/filter/core/j;)V

    .line 224
    return-void
.end method
