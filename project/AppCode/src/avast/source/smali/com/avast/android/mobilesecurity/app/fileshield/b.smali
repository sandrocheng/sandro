.class final Lcom/avast/android/mobilesecurity/app/fileshield/b;
.super Ljava/lang/Object;
.source "AccessedFile.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/app/fileshield/a;Lcom/avast/android/mobilesecurity/app/fileshield/a;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 28
    if-nez p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p1, p2}, Lcom/avast/android/mobilesecurity/app/fileshield/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/fileshield/a;->c()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/app/fileshield/a;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    .line 38
    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    check-cast p1, Lcom/avast/android/mobilesecurity/app/fileshield/a;

    check-cast p2, Lcom/avast/android/mobilesecurity/app/fileshield/a;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/fileshield/b;->a(Lcom/avast/android/mobilesecurity/app/fileshield/a;Lcom/avast/android/mobilesecurity/app/fileshield/a;)I

    move-result v0

    return v0
.end method
