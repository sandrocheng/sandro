.class public final enum Lcom/avast/a/a/a/a/ag;
.super Ljava/lang/Enum;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/a/a/a/a/ag;

.field public static final enum b:Lcom/avast/a/a/a/a/ag;

.field public static final enum c:Lcom/avast/a/a/a/a/ag;

.field private static d:Lcom/google/a/w;

.field private static final synthetic f:[Lcom/avast/a/a/a/a/ag;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 814
    new-instance v0, Lcom/avast/a/a/a/a/ag;

    const-string v1, "NONE1"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/avast/a/a/a/a/ag;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    .line 815
    new-instance v0, Lcom/avast/a/a/a/a/ag;

    const-string v1, "SELECTED"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/avast/a/a/a/a/ag;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/a/ag;->b:Lcom/avast/a/a/a/a/ag;

    .line 816
    new-instance v0, Lcom/avast/a/a/a/a/ag;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/avast/a/a/a/a/ag;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/a/ag;->c:Lcom/avast/a/a/a/a/ag;

    .line 812
    new-array v0, v5, [Lcom/avast/a/a/a/a/ag;

    sget-object v1, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/a/a/a/a/ag;->b:Lcom/avast/a/a/a/a/ag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/a/a/a/a/ag;->c:Lcom/avast/a/a/a/a/ag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/a/a/a/a/ag;->f:[Lcom/avast/a/a/a/a/ag;

    .line 840
    new-instance v0, Lcom/avast/a/a/a/a/ah;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/ah;-><init>()V

    sput-object v0, Lcom/avast/a/a/a/a/ag;->d:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 849
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 850
    iput p4, p0, Lcom/avast/a/a/a/a/ag;->e:I

    .line 851
    return-void
.end method

.method public static a(I)Lcom/avast/a/a/a/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 827
    packed-switch p0, :pswitch_data_0

    .line 831
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 828
    :pswitch_0
    sget-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    goto :goto_0

    .line 829
    :pswitch_1
    sget-object v0, Lcom/avast/a/a/a/a/ag;->b:Lcom/avast/a/a/a/a/ag;

    goto :goto_0

    .line 830
    :pswitch_2
    sget-object v0, Lcom/avast/a/a/a/a/ag;->c:Lcom/avast/a/a/a/a/ag;

    goto :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/a/a/a/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 812
    const-class v0, Lcom/avast/a/a/a/a/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/a/ag;

    return-object v0
.end method

.method public static values()[Lcom/avast/a/a/a/a/ag;
    .locals 1

    .prologue
    .line 812
    sget-object v0, Lcom/avast/a/a/a/a/ag;->f:[Lcom/avast/a/a/a/a/ag;

    invoke-virtual {v0}, [Lcom/avast/a/a/a/a/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/a/a/a/a/ag;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/avast/a/a/a/a/ag;->e:I

    return v0
.end method
