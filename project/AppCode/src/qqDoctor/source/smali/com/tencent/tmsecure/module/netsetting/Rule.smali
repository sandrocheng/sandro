.class public Lcom/tencent/tmsecure/module/netsetting/Rule;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_HOST:I = 0x2

.field public static final TYPE_UID:I = 0x1

.field public static final VERDICT_ACCEPT:Ljava/lang/String; = "ACCEPT"

.field public static final VERDICT_DROP:Ljava/lang/String; = "DROP"

.field public static final VERDICT_QUEUE:Ljava/lang/String; = "NFQUEUE"


# instance fields
.field public host:Ljava/lang/String;

.field public hostVerdict:Ljava/lang/String;

.field public type:I

.field public uid:I

.field public uidMobileVerdict:Ljava/lang/String;

.field public uidWifiVerdict:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
