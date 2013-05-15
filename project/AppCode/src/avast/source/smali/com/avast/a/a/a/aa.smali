.class public final enum Lcom/avast/a/a/a/aa;
.super Ljava/lang/Enum;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/a/a/a/aa;

.field public static final enum b:Lcom/avast/a/a/a/aa;

.field public static final enum c:Lcom/avast/a/a/a/aa;

.field public static final enum d:Lcom/avast/a/a/a/aa;

.field public static final enum e:Lcom/avast/a/a/a/aa;

.field public static final enum f:Lcom/avast/a/a/a/aa;

.field private static g:Lcom/google/a/w;

.field private static final synthetic i:[Lcom/avast/a/a/a/aa;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10663
    new-instance v0, Lcom/avast/a/a/a/aa;

    const-string v1, "C2DM_SUCCESS"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/avast/a/a/a/aa;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/aa;->a:Lcom/avast/a/a/a/aa;

    .line 10664
    new-instance v0, Lcom/avast/a/a/a/aa;

    const-string v1, "BATTERY_LOW"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/avast/a/a/a/aa;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/aa;->b:Lcom/avast/a/a/a/aa;

    .line 10665
    new-instance v0, Lcom/avast/a/a/a/aa;

    const-string v1, "UPDATE_PREPARATION"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/avast/a/a/a/aa;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/aa;->c:Lcom/avast/a/a/a/aa;

    .line 10666
    new-instance v0, Lcom/avast/a/a/a/aa;

    const-string v1, "BATTERY_LOW_PREPARATION"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/avast/a/a/a/aa;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/aa;->d:Lcom/avast/a/a/a/aa;

    .line 10667
    new-instance v0, Lcom/avast/a/a/a/aa;

    const-string v1, "BATTERY_LOW_BUSY"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/avast/a/a/a/aa;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/aa;->e:Lcom/avast/a/a/a/aa;

    .line 10668
    new-instance v0, Lcom/avast/a/a/a/aa;

    const-string v1, "BATTERY_LOW_ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avast/a/a/a/aa;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/aa;->f:Lcom/avast/a/a/a/aa;

    .line 10661
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avast/a/a/a/aa;

    sget-object v1, Lcom/avast/a/a/a/aa;->a:Lcom/avast/a/a/a/aa;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/a/a/a/aa;->b:Lcom/avast/a/a/a/aa;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/a/a/a/aa;->c:Lcom/avast/a/a/a/aa;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/a/a/a/aa;->d:Lcom/avast/a/a/a/aa;

    aput-object v1, v0, v8

    sget-object v1, Lcom/avast/a/a/a/aa;->e:Lcom/avast/a/a/a/aa;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/a/a/a/aa;->f:Lcom/avast/a/a/a/aa;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/a/a/a/aa;->i:[Lcom/avast/a/a/a/aa;

    .line 10698
    new-instance v0, Lcom/avast/a/a/a/ab;

    invoke-direct {v0}, Lcom/avast/a/a/a/ab;-><init>()V

    sput-object v0, Lcom/avast/a/a/a/aa;->g:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10707
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10708
    iput p4, p0, Lcom/avast/a/a/a/aa;->h:I

    .line 10709
    return-void
.end method

.method public static a(I)Lcom/avast/a/a/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 10682
    packed-switch p0, :pswitch_data_0

    .line 10689
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 10683
    :pswitch_0
    sget-object v0, Lcom/avast/a/a/a/aa;->a:Lcom/avast/a/a/a/aa;

    goto :goto_0

    .line 10684
    :pswitch_1
    sget-object v0, Lcom/avast/a/a/a/aa;->b:Lcom/avast/a/a/a/aa;

    goto :goto_0

    .line 10685
    :pswitch_2
    sget-object v0, Lcom/avast/a/a/a/aa;->c:Lcom/avast/a/a/a/aa;

    goto :goto_0

    .line 10686
    :pswitch_3
    sget-object v0, Lcom/avast/a/a/a/aa;->d:Lcom/avast/a/a/a/aa;

    goto :goto_0

    .line 10687
    :pswitch_4
    sget-object v0, Lcom/avast/a/a/a/aa;->e:Lcom/avast/a/a/a/aa;

    goto :goto_0

    .line 10688
    :pswitch_5
    sget-object v0, Lcom/avast/a/a/a/aa;->f:Lcom/avast/a/a/a/aa;

    goto :goto_0

    .line 10682
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/a/a/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 10661
    const-class v0, Lcom/avast/a/a/a/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/aa;

    return-object v0
.end method

.method public static values()[Lcom/avast/a/a/a/aa;
    .locals 1

    .prologue
    .line 10661
    sget-object v0, Lcom/avast/a/a/a/aa;->i:[Lcom/avast/a/a/a/aa;

    invoke-virtual {v0}, [Lcom/avast/a/a/a/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/a/a/a/aa;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 10679
    iget v0, p0, Lcom/avast/a/a/a/aa;->h:I

    return v0
.end method
