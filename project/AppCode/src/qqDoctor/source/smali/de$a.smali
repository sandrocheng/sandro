.class public final enum Lde$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lde$a;

.field public static final enum b:Lde$a;

.field public static final enum c:Lde$a;

.field public static final enum d:Lde$a;

.field private static final synthetic e:[Lde$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lde$a;

    const-string v1, "OPHONE"

    invoke-direct {v0, v1, v2}, Lde$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde$a;->a:Lde$a;

    new-instance v0, Lde$a;

    const-string v1, "GENERAL"

    invoke-direct {v0, v1, v3}, Lde$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde$a;->b:Lde$a;

    new-instance v0, Lde$a;

    const-string v1, "HUAWEI_U8500"

    invoke-direct {v0, v1, v4}, Lde$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde$a;->c:Lde$a;

    new-instance v0, Lde$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lde$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde$a;->d:Lde$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lde$a;

    sget-object v1, Lde$a;->a:Lde$a;

    aput-object v1, v0, v2

    sget-object v1, Lde$a;->b:Lde$a;

    aput-object v1, v0, v3

    sget-object v1, Lde$a;->c:Lde$a;

    aput-object v1, v0, v4

    sget-object v1, Lde$a;->d:Lde$a;

    aput-object v1, v0, v5

    sput-object v0, Lde$a;->e:[Lde$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde$a;
    .locals 1

    const-class v0, Lde$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde$a;

    return-object v0
.end method

.method public static values()[Lde$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lde$a;->e:[Lde$a;

    array-length v1, v0

    new-array v2, v1, [Lde$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
