.class public final enum Lcc$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcc$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcc$b;

.field public static final enum b:Lcc$b;

.field public static final enum c:Lcc$b;

.field public static final enum d:Lcc$b;

.field private static enum e:Lcc$b;

.field private static enum f:Lcc$b;

.field private static enum g:Lcc$b;

.field private static enum h:Lcc$b;

.field private static enum i:Lcc$b;

.field private static enum j:Lcc$b;

.field private static final synthetic k:[Lcc$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcc$b;

    const-string v1, "FILTER_ALL"

    invoke-direct {v0, v1, v3}, Lcc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$b;->a:Lcc$b;

    new-instance v0, Lcc$b;

    const-string v1, "FILTER_CONTACT_ALL_ITEMS"

    invoke-direct {v0, v1, v4}, Lcc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$b;->b:Lcc$b;

    new-instance v0, Lcc$b;

    const-string v1, "FILTER_CONTACT_ONLY_PHOTO"

    invoke-direct {v0, v1, v5}, Lcc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$b;->c:Lcc$b;

    new-instance v0, Lcc$b;

    const-string v1, "FILTER_CONTACT_NO_PHOTO"

    invoke-direct {v0, v1, v6}, Lcc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$b;->d:Lcc$b;

    new-instance v0, Lcc$b;

    const-string v1, "FILTER_SMS_ALL"

    invoke-direct {v0, v1, v7}, Lcc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$b;->e:Lcc$b;

    new-instance v0, Lcc$b;

    const-string v1, "FILTER_SMS_PHONENUM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$b;->f:Lcc$b;

    new-instance v0, Lcc$b;

    const-string v1, "FILTER_CALLlOG_ALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$b;->g:Lcc$b;

    new-instance v0, Lcc$b;

    const-string v1, "FILTER_CALLlOG_DATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$b;->h:Lcc$b;

    new-instance v0, Lcc$b;

    const-string v1, "FILTER_CALLLOG_PHONENUM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$b;->i:Lcc$b;

    new-instance v0, Lcc$b;

    const-string v1, "FILTER_BOOKMARK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc$b;->j:Lcc$b;

    const/16 v0, 0xa

    new-array v0, v0, [Lcc$b;

    sget-object v1, Lcc$b;->a:Lcc$b;

    aput-object v1, v0, v3

    sget-object v1, Lcc$b;->b:Lcc$b;

    aput-object v1, v0, v4

    sget-object v1, Lcc$b;->c:Lcc$b;

    aput-object v1, v0, v5

    sget-object v1, Lcc$b;->d:Lcc$b;

    aput-object v1, v0, v6

    sget-object v1, Lcc$b;->e:Lcc$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcc$b;->f:Lcc$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcc$b;->g:Lcc$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcc$b;->h:Lcc$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcc$b;->i:Lcc$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcc$b;->j:Lcc$b;

    aput-object v2, v0, v1

    sput-object v0, Lcc$b;->k:[Lcc$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcc$b;
    .locals 1

    const-class v0, Lcc$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcc$b;

    return-object v0
.end method

.method public static values()[Lcc$b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcc$b;->k:[Lcc$b;

    array-length v1, v0

    new-array v2, v1, [Lcc$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
