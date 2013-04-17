.class public final Lap;
.super Ljava/lang/Object;


# static fields
.field private static a:Lap;


# instance fields
.field private b:Las;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lap;->a:Lap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lde;->f()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    new-instance v0, Laq;

    invoke-direct {v0}, Laq;-><init>()V

    iput-object v0, p0, Lap;->b:Las;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lar;

    invoke-direct {v0}, Lar;-><init>()V

    iput-object v0, p0, Lap;->b:Las;

    goto :goto_0
.end method

.method public static a()Lap;
    .locals 1

    sget-object v0, Lap;->a:Lap;

    if-nez v0, :cond_0

    new-instance v0, Lap;

    invoke-direct {v0}, Lap;-><init>()V

    sput-object v0, Lap;->a:Lap;

    :cond_0
    sget-object v0, Lap;->a:Lap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lap;->b:Las;

    const/4 v1, -0x1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v3

    invoke-interface/range {v0 .. v6}, Las;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method
