.class public Lcom/avast/android/mobilesecurity/a;
.super Lcom/avast/android/generic/c;
.source "Contract.java"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://com.avast.android.mobilesecurity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/a;->a:Landroid/net/Uri;

    return-void
.end method
