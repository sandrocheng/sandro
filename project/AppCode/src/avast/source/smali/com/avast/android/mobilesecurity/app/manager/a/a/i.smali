.class public Lcom/avast/android/mobilesecurity/app/manager/a/a/i;
.super Ljava/lang/Object;
.source "ValueComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/i;->a:Z

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/app/manager/a/a/d;Lcom/avast/android/mobilesecurity/app/manager/a/a/d;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/i;->a:Z

    if-eqz v0, :cond_0

    .line 27
    iget-wide v0, p2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->j:J

    iget-wide v2, p1, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->j:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 29
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->j:J

    iget-wide v2, p2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->j:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12
    check-cast p1, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;

    check-cast p2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/manager/a/a/i;->a(Lcom/avast/android/mobilesecurity/app/manager/a/a/d;Lcom/avast/android/mobilesecurity/app/manager/a/a/d;)I

    move-result v0

    return v0
.end method
