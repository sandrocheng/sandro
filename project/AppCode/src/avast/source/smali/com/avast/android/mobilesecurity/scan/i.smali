.class public Lcom/avast/android/mobilesecurity/scan/i;
.super Landroid/os/Binder;
.source "ScanService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/scan/ScanService;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/scan/i;->a:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/scan/ScanService;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/i;->a:Lcom/avast/android/mobilesecurity/scan/ScanService;

    return-object v0
.end method
