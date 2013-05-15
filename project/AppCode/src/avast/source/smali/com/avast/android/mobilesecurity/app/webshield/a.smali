.class Lcom/avast/android/mobilesecurity/app/webshield/a;
.super Lcom/dolphin/browser/addons/am;
.source "DolphinWebshieldService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/webshield/a;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    invoke-direct {p0}, Lcom/dolphin/browser/addons/am;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "On change called"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 73
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/a;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a()Lcom/dolphin/browser/addons/h;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/a;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;)Lcom/avast/android/mobilesecurity/app/webshield/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/app/webshield/c;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method
