.class public final enum Lcom/avast/a/a/a/ao;
.super Ljava/lang/Enum;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/a/a/a/ao;

.field public static final enum b:Lcom/avast/a/a/a/ao;

.field public static final enum c:Lcom/avast/a/a/a/ao;

.field public static final enum d:Lcom/avast/a/a/a/ao;

.field private static e:Lcom/google/a/w;

.field private static final synthetic g:[Lcom/avast/a/a/a/ao;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11093
    new-instance v0, Lcom/avast/a/a/a/ao;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/avast/a/a/a/ao;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/ao;->a:Lcom/avast/a/a/a/ao;

    .line 11094
    new-instance v0, Lcom/avast/a/a/a/ao;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/avast/a/a/a/ao;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/ao;->b:Lcom/avast/a/a/a/ao;

    .line 11095
    new-instance v0, Lcom/avast/a/a/a/ao;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/avast/a/a/a/ao;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/ao;->c:Lcom/avast/a/a/a/ao;

    .line 11096
    new-instance v0, Lcom/avast/a/a/a/ao;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/avast/a/a/a/ao;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/ao;->d:Lcom/avast/a/a/a/ao;

    .line 11091
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avast/a/a/a/ao;

    sget-object v1, Lcom/avast/a/a/a/ao;->a:Lcom/avast/a/a/a/ao;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/a/a/a/ao;->b:Lcom/avast/a/a/a/ao;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/a/a/a/ao;->c:Lcom/avast/a/a/a/ao;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/a/a/a/ao;->d:Lcom/avast/a/a/a/ao;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avast/a/a/a/ao;->g:[Lcom/avast/a/a/a/ao;

    .line 11122
    new-instance v0, Lcom/avast/a/a/a/ap;

    invoke-direct {v0}, Lcom/avast/a/a/a/ap;-><init>()V

    sput-object v0, Lcom/avast/a/a/a/ao;->e:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11132
    iput p4, p0, Lcom/avast/a/a/a/ao;->f:I

    .line 11133
    return-void
.end method

.method public static a(I)Lcom/avast/a/a/a/ao;
    .locals 1
    .parameter

    .prologue
    .line 11108
    packed-switch p0, :pswitch_data_0

    .line 11113
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11109
    :pswitch_0
    sget-object v0, Lcom/avast/a/a/a/ao;->a:Lcom/avast/a/a/a/ao;

    goto :goto_0

    .line 11110
    :pswitch_1
    sget-object v0, Lcom/avast/a/a/a/ao;->b:Lcom/avast/a/a/a/ao;

    goto :goto_0

    .line 11111
    :pswitch_2
    sget-object v0, Lcom/avast/a/a/a/ao;->c:Lcom/avast/a/a/a/ao;

    goto :goto_0

    .line 11112
    :pswitch_3
    sget-object v0, Lcom/avast/a/a/a/ao;->d:Lcom/avast/a/a/a/ao;

    goto :goto_0

    .line 11108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/a/a/a/ao;
    .locals 1
    .parameter

    .prologue
    .line 11091
    const-class v0, Lcom/avast/a/a/a/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/ao;

    return-object v0
.end method

.method public static values()[Lcom/avast/a/a/a/ao;
    .locals 1

    .prologue
    .line 11091
    sget-object v0, Lcom/avast/a/a/a/ao;->g:[Lcom/avast/a/a/a/ao;

    invoke-virtual {v0}, [Lcom/avast/a/a/a/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/a/a/a/ao;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 11105
    iget v0, p0, Lcom/avast/a/a/a/ao;->f:I

    return v0
.end method
