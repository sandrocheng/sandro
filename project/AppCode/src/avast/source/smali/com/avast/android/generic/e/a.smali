.class public Lcom/avast/android/generic/e/a;
.super Ljava/lang/Object;
.source "V23AndHigherSerials.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Newer SDK"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a()Lcom/avast/android/generic/e/a;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/avast/android/generic/e/a;

    invoke-direct {v0}, Lcom/avast/android/generic/e/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 27
    if-eqz v0, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 32
    :cond_0
    return-object v0
.end method
