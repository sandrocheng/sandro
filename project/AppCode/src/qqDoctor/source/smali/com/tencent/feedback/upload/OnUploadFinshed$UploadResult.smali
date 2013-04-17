.class public final enum Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;
.super Ljava/lang/Enum;
.source "OnUploadFinshed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/upload/OnUploadFinshed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadResult"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

.field public static final enum UploadError:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

.field public static final enum UploadFail:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

.field public static final enum UploadOk:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    const-string v1, "UploadOk"

    invoke-direct {v0, v1, v2}, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadOk:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    new-instance v0, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    const-string v1, "UploadFail"

    invoke-direct {v0, v1, v3}, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadFail:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    new-instance v0, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    const-string v1, "UploadError"

    invoke-direct {v0, v1, v4}, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadError:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    sget-object v1, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadOk:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadFail:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadError:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->$VALUES:[Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    return-object v0
.end method

.method public static values()[Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->$VALUES:[Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    invoke-virtual {v0}, [Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    return-object v0
.end method
