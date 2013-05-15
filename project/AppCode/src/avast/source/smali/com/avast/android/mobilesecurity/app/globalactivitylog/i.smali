.class final enum Lcom/avast/android/mobilesecurity/app/globalactivitylog/i;
.super Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;
.source "GlobalActivityLogCategory.java"


# direct methods
.method varargs constructor <init>(Ljava/lang/String;II[Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;-><init>(Ljava/lang/String;II[Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Lcom/avast/android/mobilesecurity/app/globalactivitylog/b;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    const v0, 0x7f0c01ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
