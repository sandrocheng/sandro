.class public Lcom/avast/android/mobilesecurity/scan/a;
.super Ljava/lang/Object;
.source "NotifyProgress.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:J

.field public d:J

.field private e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanProgress;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-direct {v0, p1}, Lcom/avast/android/mobilesecurity/scan/ScanProgress;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanProgress;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/a;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    .line 51
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/scan/a;->c:J

    .line 52
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/scan/a;->d:J

    .line 54
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/scan/a;->a:Z

    .line 55
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/scan/a;->b:Z

    .line 56
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/a;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    return-object v0
.end method
