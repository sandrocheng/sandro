.class public Landroid/support/v4/c/a;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"


# direct methods
.method public static a(Landroid/support/v4/c/c;)Landroid/os/Parcelable$Creator;
    .locals 2
    .parameter

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0}, Landroid/support/v4/c/e;->a(Landroid/support/v4/c/c;)Landroid/os/Parcelable$Creator;

    .line 39
    :cond_0
    new-instance v0, Landroid/support/v4/c/b;

    invoke-direct {v0, p0}, Landroid/support/v4/c/b;-><init>(Landroid/support/v4/c/c;)V

    return-object v0
.end method
