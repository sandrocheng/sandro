.class public final Landroid/a/p;
.super Ljava/lang/Object;
.source "Telephony.java"


# static fields
.field public static final a:Landroid/net/Uri; = null

.field public static final b:Ljava/lang/String; = "/sdcard/mms/scrapSpace/.temp.jpg"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1478
    const-string v0, "content://mms/scrapSpace"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/p;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
