.class public final enum Lcc$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcc$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcc$a;

.field public static final enum b:Lcc$a;

.field public static final enum c:Lcc$a;

.field public static final enum d:Lcc$a;

.field public static final enum e:Lcc$a;

.field public static final enum f:Lcc$a;

.field private static final synthetic g:[Lcc$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcc$a;

    const-string v1, "VCARD"

    invoke-direct {v0, v1, v3}, Lcc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$a;->a:Lcc$a;

    new-instance v0, Lcc$a;

    const-string v1, "VMESSAGE"

    invoke-direct {v0, v1, v4}, Lcc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$a;->b:Lcc$a;

    new-instance v0, Lcc$a;

    const-string v1, "VCALLLOG"

    invoke-direct {v0, v1, v5}, Lcc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$a;->c:Lcc$a;

    new-instance v0, Lcc$a;

    const-string v1, "VBOOKMARK"

    invoke-direct {v0, v1, v6}, Lcc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$a;->d:Lcc$a;

    new-instance v0, Lcc$a;

    const-string v1, "VWBLIST"

    invoke-direct {v0, v1, v7}, Lcc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$a;->e:Lcc$a;

    new-instance v0, Lcc$a;

    const-string v1, "VQQBROSWER_BOOKMEAK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$a;->f:Lcc$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcc$a;

    sget-object v1, Lcc$a;->a:Lcc$a;

    aput-object v1, v0, v3

    sget-object v1, Lcc$a;->b:Lcc$a;

    aput-object v1, v0, v4

    sget-object v1, Lcc$a;->c:Lcc$a;

    aput-object v1, v0, v5

    sget-object v1, Lcc$a;->d:Lcc$a;

    aput-object v1, v0, v6

    sget-object v1, Lcc$a;->e:Lcc$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcc$a;->f:Lcc$a;

    aput-object v2, v0, v1

    sput-object v0, Lcc$a;->g:[Lcc$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcc$a;
    .locals 1

    const-class v0, Lcc$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcc$a;

    return-object v0
.end method

.method public static values()[Lcc$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcc$a;->g:[Lcc$a;

    array-length v1, v0

    new-array v2, v1, [Lcc$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
