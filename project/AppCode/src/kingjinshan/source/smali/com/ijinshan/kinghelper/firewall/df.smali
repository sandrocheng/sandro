.class public final enum Lcom/ijinshan/kinghelper/firewall/df;
.super Ljava/lang/Enum;
.source "PrefManager.java"


# static fields
.field public static final enum a:Lcom/ijinshan/kinghelper/firewall/df;

.field public static final enum b:Lcom/ijinshan/kinghelper/firewall/df;

.field public static final enum c:Lcom/ijinshan/kinghelper/firewall/df;

.field public static final enum d:Lcom/ijinshan/kinghelper/firewall/df;

.field public static final enum e:Lcom/ijinshan/kinghelper/firewall/df;

.field public static final enum f:Lcom/ijinshan/kinghelper/firewall/df;

.field public static final enum g:Lcom/ijinshan/kinghelper/firewall/df;

.field private static final synthetic j:[Lcom/ijinshan/kinghelper/firewall/df;


# instance fields
.field public final h:I

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 269
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/df;

    const-string v1, "Auto"

    const v2, 0x7f0b002e

    const v3, 0x7f0b01a7

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/ijinshan/kinghelper/firewall/df;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/df;->a:Lcom/ijinshan/kinghelper/firewall/df;

    .line 272
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/df;

    const-string v1, "Black"

    const v2, 0x7f0b0031

    const v3, 0x7f0b01a8

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/ijinshan/kinghelper/firewall/df;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/df;->b:Lcom/ijinshan/kinghelper/firewall/df;

    .line 276
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/df;

    const-string v1, "White"

    const v2, 0x7f0b0033

    const v3, 0x7f0b01a9

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/ijinshan/kinghelper/firewall/df;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/df;->c:Lcom/ijinshan/kinghelper/firewall/df;

    .line 279
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/df;

    const-string v1, "DenyAll"

    const v2, 0x7f0b0035

    const v3, 0x7f0b01aa

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/ijinshan/kinghelper/firewall/df;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/df;->d:Lcom/ijinshan/kinghelper/firewall/df;

    .line 283
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/df;

    const-string v1, "BlackStranger"

    const v2, 0x7f0b0037

    const v3, 0x7f0b01ab

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/ijinshan/kinghelper/firewall/df;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/df;->e:Lcom/ijinshan/kinghelper/firewall/df;

    .line 287
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/df;

    const-string v1, "Custom"

    const/4 v2, 0x5

    const v3, 0x7f0b0039

    const v4, 0x7f0b01ac

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ijinshan/kinghelper/firewall/df;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/df;->f:Lcom/ijinshan/kinghelper/firewall/df;

    .line 290
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/df;

    const-string v1, "Custom_edit"

    const/4 v2, 0x6

    const v3, 0x7f0b003a

    const v4, 0x7f0b01ad

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ijinshan/kinghelper/firewall/df;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/df;->g:Lcom/ijinshan/kinghelper/firewall/df;

    .line 267
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ijinshan/kinghelper/firewall/df;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->a:Lcom/ijinshan/kinghelper/firewall/df;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->b:Lcom/ijinshan/kinghelper/firewall/df;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->c:Lcom/ijinshan/kinghelper/firewall/df;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->d:Lcom/ijinshan/kinghelper/firewall/df;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->e:Lcom/ijinshan/kinghelper/firewall/df;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/df;->f:Lcom/ijinshan/kinghelper/firewall/df;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/df;->g:Lcom/ijinshan/kinghelper/firewall/df;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/df;->j:[Lcom/ijinshan/kinghelper/firewall/df;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 293
    iput p3, p0, Lcom/ijinshan/kinghelper/firewall/df;->h:I

    .line 294
    iput p4, p0, Lcom/ijinshan/kinghelper/firewall/df;->i:I

    .line 295
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/df;
    .locals 6
    .parameter

    .prologue
    .line 309
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/df;->values()[Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 310
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->A()Landroid/content/Context;

    move-result-object v4

    iget v5, v3, Lcom/ijinshan/kinghelper/firewall/df;->i:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 312
    :goto_1
    return-object v0

    .line 309
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_1
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->C()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/df;
    .locals 1
    .parameter

    .prologue
    .line 267
    const-class v0, Lcom/ijinshan/kinghelper/firewall/df;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/df;

    return-object p0
.end method

.method public static values()[Lcom/ijinshan/kinghelper/firewall/df;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/df;->j:[Lcom/ijinshan/kinghelper/firewall/df;

    invoke-virtual {v0}, [Lcom/ijinshan/kinghelper/firewall/df;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ijinshan/kinghelper/firewall/df;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->A()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/df;->h:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->A()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/df;->i:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method