.class public final enum Lcf$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcf$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcf$a;

.field public static final enum b:Lcf$a;

.field public static final enum c:Lcf$a;

.field public static final enum d:Lcf$a;

.field public static final enum e:Lcf$a;

.field private static final synthetic f:[Lcf$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcf$a;

    const-string v1, "SUCCEED"

    invoke-direct {v0, v1, v2}, Lcf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcf$a;->a:Lcf$a;

    new-instance v0, Lcf$a;

    const-string v1, "RELOGIN"

    invoke-direct {v0, v1, v3}, Lcf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcf$a;->b:Lcf$a;

    new-instance v0, Lcf$a;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcf$a;->c:Lcf$a;

    new-instance v0, Lcf$a;

    const-string v1, "USER_CANCEL"

    invoke-direct {v0, v1, v5}, Lcf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcf$a;->d:Lcf$a;

    new-instance v0, Lcf$a;

    const-string v1, "FAIL_CONFLICT"

    invoke-direct {v0, v1, v6}, Lcf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcf$a;->e:Lcf$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcf$a;

    sget-object v1, Lcf$a;->a:Lcf$a;

    aput-object v1, v0, v2

    sget-object v1, Lcf$a;->b:Lcf$a;

    aput-object v1, v0, v3

    sget-object v1, Lcf$a;->c:Lcf$a;

    aput-object v1, v0, v4

    sget-object v1, Lcf$a;->d:Lcf$a;

    aput-object v1, v0, v5

    sget-object v1, Lcf$a;->e:Lcf$a;

    aput-object v1, v0, v6

    sput-object v0, Lcf$a;->f:[Lcf$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcf$a;
    .locals 1

    const-class v0, Lcf$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcf$a;

    return-object v0
.end method

.method public static values()[Lcf$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcf$a;->f:[Lcf$a;

    array-length v1, v0

    new-array v2, v1, [Lcf$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
