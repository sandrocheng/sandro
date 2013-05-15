.class public final enum Lcom/avast/a/a/a/a/ab;
.super Ljava/lang/Enum;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/a/a/a/a/ab;

.field public static final enum b:Lcom/avast/a/a/a/a/ab;

.field private static c:Lcom/google/a/w;

.field private static final synthetic e:[Lcom/avast/a/a/a/a/ab;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 620
    new-instance v0, Lcom/avast/a/a/a/a/ab;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/avast/a/a/a/a/ab;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/a/ab;->a:Lcom/avast/a/a/a/a/ab;

    .line 621
    new-instance v0, Lcom/avast/a/a/a/a/ab;

    const-string v1, "GOOGLE_DRIVE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/avast/a/a/a/a/ab;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/a/ab;->b:Lcom/avast/a/a/a/a/ab;

    .line 618
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avast/a/a/a/a/ab;

    sget-object v1, Lcom/avast/a/a/a/a/ab;->a:Lcom/avast/a/a/a/a/ab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/a/a/a/a/ab;->b:Lcom/avast/a/a/a/a/ab;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/a/a/a/a/ab;->e:[Lcom/avast/a/a/a/a/ab;

    .line 643
    new-instance v0, Lcom/avast/a/a/a/a/ac;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/ac;-><init>()V

    sput-object v0, Lcom/avast/a/a/a/a/ab;->c:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 652
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 653
    iput p4, p0, Lcom/avast/a/a/a/a/ab;->d:I

    .line 654
    return-void
.end method

.method public static a(I)Lcom/avast/a/a/a/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 631
    packed-switch p0, :pswitch_data_0

    .line 634
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 632
    :pswitch_0
    sget-object v0, Lcom/avast/a/a/a/a/ab;->a:Lcom/avast/a/a/a/a/ab;

    goto :goto_0

    .line 633
    :pswitch_1
    sget-object v0, Lcom/avast/a/a/a/a/ab;->b:Lcom/avast/a/a/a/a/ab;

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/a/a/a/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 618
    const-class v0, Lcom/avast/a/a/a/a/ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/a/ab;

    return-object v0
.end method

.method public static values()[Lcom/avast/a/a/a/a/ab;
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lcom/avast/a/a/a/a/ab;->e:[Lcom/avast/a/a/a/a/ab;

    invoke-virtual {v0}, [Lcom/avast/a/a/a/a/ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/a/a/a/a/ab;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lcom/avast/a/a/a/a/ab;->d:I

    return v0
.end method
