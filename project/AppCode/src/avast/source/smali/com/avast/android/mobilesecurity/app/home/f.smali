.class Lcom/avast/android/mobilesecurity/app/home/f;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/ui/j;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/home/f;->a:Lcom/avast/android/mobilesecurity/app/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/ui/g;)V
    .locals 6
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/f;->a:Lcom/avast/android/mobilesecurity/app/home/HomeActivity;

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->q(Z)V

    .line 189
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    const-string v1, "ms-ActivityLog"

    const-string v2, "opened"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    return-void
.end method

.method public b(Lcom/avast/android/mobilesecurity/ui/g;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    return-void
.end method
