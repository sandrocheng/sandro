.class Lcom/avast/android/mobilesecurity/app/messageshield/l;
.super Ljava/lang/Object;
.source "NewMessageScanTask.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/filter/core/k;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/messageshield/k;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/messageshield/k;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/l;->a:Lcom/avast/android/mobilesecurity/app/messageshield/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewMessageScanTask: Saved aborted message with uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/l;->a:Lcom/avast/android/mobilesecurity/app/messageshield/k;

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

    .line 188
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/l;->a:Lcom/avast/android/mobilesecurity/app/messageshield/k;

    invoke-static {v0, p1}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a(Lcom/avast/android/mobilesecurity/app/messageshield/k;Ljava/util/List;)V

    .line 183
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
