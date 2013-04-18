.class final enum Lcom/ijinshan/cleaner/aq;
.super Ljava/lang/Enum;
.source "SDcardCleanerActivity.java"


# static fields
.field public static final enum a:Lcom/ijinshan/cleaner/aq;

.field public static final enum b:Lcom/ijinshan/cleaner/aq;

.field public static final enum c:Lcom/ijinshan/cleaner/aq;

.field private static final synthetic d:[Lcom/ijinshan/cleaner/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/ijinshan/cleaner/aq;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/ijinshan/cleaner/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ijinshan/cleaner/aq;->a:Lcom/ijinshan/cleaner/aq;

    new-instance v0, Lcom/ijinshan/cleaner/aq;

    const-string v1, "CLEAN"

    invoke-direct {v0, v1, v3}, Lcom/ijinshan/cleaner/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ijinshan/cleaner/aq;->b:Lcom/ijinshan/cleaner/aq;

    new-instance v0, Lcom/ijinshan/cleaner/aq;

    const-string v1, "RESCAN"

    invoke-direct {v0, v1, v4}, Lcom/ijinshan/cleaner/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ijinshan/cleaner/aq;->c:Lcom/ijinshan/cleaner/aq;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ijinshan/cleaner/aq;

    sget-object v1, Lcom/ijinshan/cleaner/aq;->a:Lcom/ijinshan/cleaner/aq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ijinshan/cleaner/aq;->b:Lcom/ijinshan/cleaner/aq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ijinshan/cleaner/aq;->c:Lcom/ijinshan/cleaner/aq;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ijinshan/cleaner/aq;->d:[Lcom/ijinshan/cleaner/aq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ijinshan/cleaner/aq;
    .locals 1
    .parameter

    .prologue
    .line 79
    const-class v0, Lcom/ijinshan/cleaner/aq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/cleaner/aq;

    return-object p0
.end method

.method public static values()[Lcom/ijinshan/cleaner/aq;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/ijinshan/cleaner/aq;->d:[Lcom/ijinshan/cleaner/aq;

    invoke-virtual {v0}, [Lcom/ijinshan/cleaner/aq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ijinshan/cleaner/aq;

    return-object v0
.end method
