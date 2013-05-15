.class public final enum Lcom/avast/a/a/a/aq;
.super Ljava/lang/Enum;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/a/a/a/aq;

.field public static final enum b:Lcom/avast/a/a/a/aq;

.field public static final enum c:Lcom/avast/a/a/a/aq;

.field public static final enum d:Lcom/avast/a/a/a/aq;

.field private static e:Lcom/google/a/w;

.field private static final synthetic g:[Lcom/avast/a/a/a/aq;


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

    .line 11046
    new-instance v0, Lcom/avast/a/a/a/aq;

    const-string v1, "UPDATE_SIMULATION"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/avast/a/a/a/aq;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/aq;->a:Lcom/avast/a/a/a/aq;

    .line 11047
    new-instance v0, Lcom/avast/a/a/a/aq;

    const-string v1, "UPDATE_SIM_CHANGE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/avast/a/a/a/aq;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/aq;->b:Lcom/avast/a/a/a/aq;

    .line 11048
    new-instance v0, Lcom/avast/a/a/a/aq;

    const-string v1, "UPDATE_NORMAL"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/avast/a/a/a/aq;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/aq;->c:Lcom/avast/a/a/a/aq;

    .line 11049
    new-instance v0, Lcom/avast/a/a/a/aq;

    const-string v1, "UPDATE_BATTERY"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/avast/a/a/a/aq;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/aq;->d:Lcom/avast/a/a/a/aq;

    .line 11044
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avast/a/a/a/aq;

    sget-object v1, Lcom/avast/a/a/a/aq;->a:Lcom/avast/a/a/a/aq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/a/a/a/aq;->b:Lcom/avast/a/a/a/aq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/a/a/a/aq;->c:Lcom/avast/a/a/a/aq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/a/a/a/aq;->d:Lcom/avast/a/a/a/aq;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avast/a/a/a/aq;->g:[Lcom/avast/a/a/a/aq;

    .line 11075
    new-instance v0, Lcom/avast/a/a/a/ar;

    invoke-direct {v0}, Lcom/avast/a/a/a/ar;-><init>()V

    sput-object v0, Lcom/avast/a/a/a/aq;->e:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11084
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11085
    iput p4, p0, Lcom/avast/a/a/a/aq;->f:I

    .line 11086
    return-void
.end method

.method public static a(I)Lcom/avast/a/a/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 11061
    packed-switch p0, :pswitch_data_0

    .line 11066
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11062
    :pswitch_0
    sget-object v0, Lcom/avast/a/a/a/aq;->a:Lcom/avast/a/a/a/aq;

    goto :goto_0

    .line 11063
    :pswitch_1
    sget-object v0, Lcom/avast/a/a/a/aq;->b:Lcom/avast/a/a/a/aq;

    goto :goto_0

    .line 11064
    :pswitch_2
    sget-object v0, Lcom/avast/a/a/a/aq;->c:Lcom/avast/a/a/a/aq;

    goto :goto_0

    .line 11065
    :pswitch_3
    sget-object v0, Lcom/avast/a/a/a/aq;->d:Lcom/avast/a/a/a/aq;

    goto :goto_0

    .line 11061
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/a/a/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 11044
    const-class v0, Lcom/avast/a/a/a/aq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/aq;

    return-object v0
.end method

.method public static values()[Lcom/avast/a/a/a/aq;
    .locals 1

    .prologue
    .line 11044
    sget-object v0, Lcom/avast/a/a/a/aq;->g:[Lcom/avast/a/a/a/aq;

    invoke-virtual {v0}, [Lcom/avast/a/a/a/aq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/a/a/a/aq;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 11058
    iget v0, p0, Lcom/avast/a/a/a/aq;->f:I

    return v0
.end method
