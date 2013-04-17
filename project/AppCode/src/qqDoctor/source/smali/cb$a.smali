.class public final enum Lcb$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcb$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcb$a;

.field public static final enum b:Lcb$a;

.field public static final enum c:Lcb$a;

.field private static final synthetic d:[Lcb$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcb$a;

    const-string v1, "ENTITY_NOT_FOUND"

    invoke-direct {v0, v1, v2}, Lcb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcb$a;->a:Lcb$a;

    new-instance v0, Lcb$a;

    const-string v1, "ACTION_SUCCEED"

    invoke-direct {v0, v1, v3}, Lcb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcb$a;->b:Lcb$a;

    new-instance v0, Lcb$a;

    const-string v1, "ACTION_FAILED"

    invoke-direct {v0, v1, v4}, Lcb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcb$a;->c:Lcb$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcb$a;

    sget-object v1, Lcb$a;->a:Lcb$a;

    aput-object v1, v0, v2

    sget-object v1, Lcb$a;->b:Lcb$a;

    aput-object v1, v0, v3

    sget-object v1, Lcb$a;->c:Lcb$a;

    aput-object v1, v0, v4

    sput-object v0, Lcb$a;->d:[Lcb$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcb$a;
    .locals 1

    const-class v0, Lcb$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcb$a;

    return-object v0
.end method

.method public static values()[Lcb$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcb$a;->d:[Lcb$a;

    array-length v1, v0

    new-array v2, v1, [Lcb$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
