.class public final Landroid/a/q;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/a/d;


# static fields
.field public static final ay:Landroid/net/Uri; = null

.field public static final az:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1319
    const-string v0, "content://mms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/q;->ay:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
