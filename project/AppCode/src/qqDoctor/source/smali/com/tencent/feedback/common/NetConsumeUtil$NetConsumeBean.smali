.class public Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;
.super Ljava/lang/Object;
.source "NetConsumeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/common/NetConsumeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetConsumeBean"
.end annotation


# instance fields
.field public final downConsume:J

.field public final notWifiConsume:J

.field public final startTime:J

.field public final uploadConsume:J

.field public final uploadTimes:J

.field public final wifiConsume:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->startTime:J

    .line 36
    iput-wide p3, p0, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->uploadTimes:J

    .line 37
    iput-wide p5, p0, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->wifiConsume:J

    .line 38
    iput-wide p7, p0, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->notWifiConsume:J

    .line 39
    iput-wide p9, p0, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->uploadConsume:J

    .line 40
    iput-wide p11, p0, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->downConsume:J

    .line 41
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->wifiConsume:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notwifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->notWifiConsume:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
