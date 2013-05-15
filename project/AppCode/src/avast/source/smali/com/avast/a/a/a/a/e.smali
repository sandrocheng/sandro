.class public final enum Lcom/avast/a/a/a/a/e;
.super Ljava/lang/Enum;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/a/a/a/a/e;

.field public static final enum b:Lcom/avast/a/a/a/a/e;

.field public static final enum c:Lcom/avast/a/a/a/a/e;

.field private static d:Lcom/google/a/w;

.field private static final synthetic f:[Lcom/avast/a/a/a/a/e;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    new-instance v0, Lcom/avast/a/a/a/a/e;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/avast/a/a/a/a/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/a/e;->a:Lcom/avast/a/a/a/a/e;

    .line 234
    new-instance v0, Lcom/avast/a/a/a/a/e;

    const-string v1, "OUTGOING"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/avast/a/a/a/a/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/a/e;->b:Lcom/avast/a/a/a/a/e;

    .line 235
    new-instance v0, Lcom/avast/a/a/a/a/e;

    const-string v1, "MISSED"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/avast/a/a/a/a/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/a/a/a/a/e;->c:Lcom/avast/a/a/a/a/e;

    .line 231
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avast/a/a/a/a/e;

    sget-object v1, Lcom/avast/a/a/a/a/e;->a:Lcom/avast/a/a/a/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/a/a/a/a/e;->b:Lcom/avast/a/a/a/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/a/a/a/a/e;->c:Lcom/avast/a/a/a/a/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avast/a/a/a/a/e;->f:[Lcom/avast/a/a/a/a/e;

    .line 259
    new-instance v0, Lcom/avast/a/a/a/a/f;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/f;-><init>()V

    sput-object v0, Lcom/avast/a/a/a/a/e;->d:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 269
    iput p4, p0, Lcom/avast/a/a/a/a/e;->e:I

    .line 270
    return-void
.end method

.method public static a(I)Lcom/avast/a/a/a/a/e;
    .locals 1
    .parameter

    .prologue
    .line 246
    packed-switch p0, :pswitch_data_0

    .line 250
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 247
    :pswitch_0
    sget-object v0, Lcom/avast/a/a/a/a/e;->a:Lcom/avast/a/a/a/a/e;

    goto :goto_0

    .line 248
    :pswitch_1
    sget-object v0, Lcom/avast/a/a/a/a/e;->b:Lcom/avast/a/a/a/a/e;

    goto :goto_0

    .line 249
    :pswitch_2
    sget-object v0, Lcom/avast/a/a/a/a/e;->c:Lcom/avast/a/a/a/a/e;

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/a/a/a/a/e;
    .locals 1
    .parameter

    .prologue
    .line 231
    const-class v0, Lcom/avast/a/a/a/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/a/e;

    return-object v0
.end method

.method public static values()[Lcom/avast/a/a/a/a/e;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/avast/a/a/a/a/e;->f:[Lcom/avast/a/a/a/a/e;

    invoke-virtual {v0}, [Lcom/avast/a/a/a/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/a/a/a/a/e;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/avast/a/a/a/a/e;->e:I

    return v0
.end method
