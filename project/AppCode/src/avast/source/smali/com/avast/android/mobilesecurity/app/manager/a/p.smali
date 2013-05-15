.class Lcom/avast/android/mobilesecurity/app/manager/a/p;
.super Ljava/lang/Object;
.source "MemoryInfoProviderImpl.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/manager/a/m;


# instance fields
.field a:F

.field b:J

.field c:J

.field final synthetic d:Lcom/avast/android/mobilesecurity/app/manager/a/n;


# direct methods
.method private constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/a/n;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 23
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->d:Lcom/avast/android/mobilesecurity/app/manager/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->a:F

    .line 25
    iput-wide v1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->b:J

    .line 26
    iput-wide v1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/a/n;Lcom/avast/android/mobilesecurity/app/manager/a/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/p;-><init>(Lcom/avast/android/mobilesecurity/app/manager/a/n;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->a:F

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->c:J

    return-wide v0
.end method
