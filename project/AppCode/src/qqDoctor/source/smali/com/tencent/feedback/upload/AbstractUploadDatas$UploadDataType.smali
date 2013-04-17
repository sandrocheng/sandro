.class public final enum Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;
.super Ljava/lang/Enum;
.source "AbstractUploadDatas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/upload/AbstractUploadDatas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadDataType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

.field public static final enum Gray_AgreeUpload:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

.field public static final enum Gray_FeedbackUpload:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

.field public static final enum Gray_Query:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

.field public static final enum RQD_COMRecords:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

.field public static final enum RQD_EUPData:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

.field public static final enum RQD_Query:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

.field public static final enum RQD_RealTimeRecords:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    const-string v1, "RQD_Query"

    invoke-direct {v0, v1, v3}, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_Query:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    new-instance v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    const-string v1, "RQD_EUPData"

    invoke-direct {v0, v1, v4}, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_EUPData:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    new-instance v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    const-string v1, "RQD_COMRecords"

    invoke-direct {v0, v1, v5}, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_COMRecords:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    new-instance v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    const-string v1, "RQD_RealTimeRecords"

    invoke-direct {v0, v1, v6}, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_RealTimeRecords:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    new-instance v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    const-string v1, "Gray_Query"

    invoke-direct {v0, v1, v7}, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->Gray_Query:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    new-instance v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    const-string v1, "Gray_FeedbackUpload"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->Gray_FeedbackUpload:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    new-instance v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    const-string v1, "Gray_AgreeUpload"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->Gray_AgreeUpload:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    sget-object v1, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_Query:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_EUPData:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_COMRecords:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_RealTimeRecords:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->Gray_Query:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->Gray_FeedbackUpload:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->Gray_AgreeUpload:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->$VALUES:[Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->$VALUES:[Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    invoke-virtual {v0}, [Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    return-object v0
.end method
