.class final enum Lcom/ijinshan/bootmanager/activity/i;
.super Ljava/lang/Enum;
.source "AutoBootMangerActivity.java"


# static fields
.field public static final enum a:Lcom/ijinshan/bootmanager/activity/i;

.field public static final enum b:Lcom/ijinshan/bootmanager/activity/i;

.field private static final synthetic c:[Lcom/ijinshan/bootmanager/activity/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Lcom/ijinshan/bootmanager/activity/i;

    const-string v1, "COLSEALL"

    invoke-direct {v0, v1, v2}, Lcom/ijinshan/bootmanager/activity/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ijinshan/bootmanager/activity/i;->a:Lcom/ijinshan/bootmanager/activity/i;

    new-instance v0, Lcom/ijinshan/bootmanager/activity/i;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v3}, Lcom/ijinshan/bootmanager/activity/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ijinshan/bootmanager/activity/i;->b:Lcom/ijinshan/bootmanager/activity/i;

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ijinshan/bootmanager/activity/i;

    sget-object v1, Lcom/ijinshan/bootmanager/activity/i;->a:Lcom/ijinshan/bootmanager/activity/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ijinshan/bootmanager/activity/i;->b:Lcom/ijinshan/bootmanager/activity/i;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ijinshan/bootmanager/activity/i;->c:[Lcom/ijinshan/bootmanager/activity/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ijinshan/bootmanager/activity/i;
    .locals 1
    .parameter

    .prologue
    .line 130
    const-class v0, Lcom/ijinshan/bootmanager/activity/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/bootmanager/activity/i;

    return-object p0
.end method

.method public static values()[Lcom/ijinshan/bootmanager/activity/i;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/ijinshan/bootmanager/activity/i;->c:[Lcom/ijinshan/bootmanager/activity/i;

    invoke-virtual {v0}, [Lcom/ijinshan/bootmanager/activity/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ijinshan/bootmanager/activity/i;

    return-object v0
.end method
